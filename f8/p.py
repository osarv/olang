import re,sys
p='compiler/free.olang'; s=open(p).read()
def rep(a,b):
    global s
    assert s.count(a)==1,a
    s=s.replace(a,b)
rep('''fn (w mut walker&) untracked(ty types.TypeId, sp source.Span, how String&) {
    if not w.Final or w.quiet > 0 { return }
    for k in w.F.heldPlaces(ty) {
        # (O8f: a part place's values a copy makes are built in no part region, which its let-go leaves where they are)
        if w.F.PartPlace(k): continue
''','''fn (w mut walker&) untracked(ty types.TypeId, sp source.Span, how String&, made Bool = false) {
    if not w.Final or w.quiet > 0 { return }
    # (O8f, round 8: a copy lowering makes - made: not a fill's, nor one a declared Copy makes, E31d - builds the text
    # of a place built in slots in slots of where it goes, as the place's own stores do: lower.copySlots)
    slots := made and not w.T().RunsCopy(ty)
    for k in w.F.heldPlaces(ty) {
        # (O8f: a part place's values a copy makes are built in no part region, which its let-go leaves where they are)
        if w.F.PartPlace(k): continue
        if slots and w.F.SlotPlace(k): continue
''')
rep('w.untracked(p.Type(), sp, "a whole array of them stored")','w.untracked(p.Type(), sp, "a whole array of them stored", true)')
rep('w.heldCopy.Has(I64(p.id)) { w.untracked(ty, p.Span(), "a copy of a value holding it") }','w.heldCopy.Has(I64(p.id)) { w.untracked(ty, p.Span(), "a copy of a value holding it", true) }')
rep('if (m.Kind == typed.MakeKind.Copy or filled) and not exempt { w.untracked(ty, sp, "a copy of a value holding it") }','if (m.Kind == typed.MakeKind.Copy or filled) and not exempt { w.untracked(ty, sp, "a copy of a value holding it", not filled) }')
rep('''and I64(c.Site) != w.exemptSite and not lent { w.untracked(ty, sp, "a call's value copied") }''','''and I64(c.Site) != w.exemptSite and not lent {
        w.untracked(ty, sp, "a call's value copied", b2 >= 0 and not unknown)
    }''')
open(p,'w').write(s)
p='compiler/lower.olang'; s=open(p).read()
rep('''        ln.eachIndex(n, sp, fn(i mir.LocalId) {
            e := ln.copyAt(ln.with(a, mir.Proj.Index(i)), el, at, sp)
            ln.emit(mir.Stmt.Assign(sp, ln.mk(ln.with(pl(mir.Base.Local(buf)), mir.Proj.Index(i))), mir.Rvalue.Use(e)))
        })
        return mir.Operand.Copy(mir.Lvalue.L(buf))
    }
    if not top { return ln.helperCall(''','''        # (O8f: text elements of a place built in slots copied into slots of at too - copySlots)
        k := ln.copySlots(ty, -1)
        ln.eachIndex(n, sp, fn(i mir.LocalId) {
            src := ln.with(a, mir.Proj.Index(i))
            dst := ln.with(pl(mir.Base.Local(buf)), mir.Proj.Index(i))
            if k < 0 {
                ln.emit(mir.Stmt.Assign(sp, ln.mk(dst), mir.Rvalue.Use(ln.copyAt(src, el, at, sp))))
                return
            }
            ln.emit(mir.Stmt.Assign(sp, ln.mk(dst), mir.Rvalue.Use(mir.Operand.Copy(ln.mk(src)))))
            ln.textSlotCopy(dst, el, k, at, sp)
        })
        return mir.Operand.Copy(mir.Lvalue.L(buf))
    }
    if not top { return ln.helperCall(''')
rep('''        parts := ln.partsOf(ty)
        for i in range parts.Len() { ln.copyPart(ln.with(dp, mir.Proj.Field(i)), parts[i], at, sp) }
    } else if mir.HasCases(ln.T, ty) {
        tag := ln.into(mir.I64T, mir.Rvalue.Tag(ln.mk(dp)), sp)''','''        parts := ln.partsOf(ty)
        for i in range parts.Len() {
            q := ln.with(dp, mir.Proj.Field(i))
            k := ln.copySlots(ty, i)
            if k >= 0: ln.textSlotCopy(q, parts[i], k, at, sp)
            else: ln.copyPart(q, parts[i], at, sp)
        }
    } else if mir.HasCases(ln.T, ty) {
        tag := ln.into(mir.I64T, mir.Rvalue.Tag(ln.mk(dp)), sp)''')
rep('''# E31d: the copy of what place a holds, of a type declaring its own Copy''','''# O8f (round 7's item 3, round 8): the text place a copy's text parts belong to - the elements of an array of text
# (field -1) or a struct's text field i - where it is one built in slots (free.SlotPlace), so that the copy builds them
# in slots of where it goes, guarded by the place's decision as every site is: a copy then makes values as the place's
# own stores do, and no copy keeps the place (free.untracked); -1 for none, or where nothing frees early
fn (ln mut lowering&) copySlots(ty types.TypeId, i I64) I64 {
    if ln.L.Free == null or not ln.L.Free!.Done: return -1
    fr := ln.L.Free!
    k := fr.ElemPlace(ty) if i < 0 else fr.FieldPlace(ty, i)
    if not fr.SlotPlace(k): return -1
    return k
}

# E31d: the copy of what place a holds, of a type declaring its own Copy''')
open(p,'w').write(s)
