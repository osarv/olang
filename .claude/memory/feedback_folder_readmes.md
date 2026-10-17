---
name: feedback-folder-readmes
description: Every top-level folder that is its own thing has a README.md saying what it is and does; add one when a new such folder appears
metadata:
  type: feedback
---

The user, 2026-10-17: "I want every main subfolder to contain a README.md that describes what the folder does. Add that
for the ones that don't when it becomes relevant (the subfolder is it's own "thing")."

**How to apply:** each top-level folder of a repository (olang: bench, bootstrap, checks, compiler, docs, fuzz, std,
tests, tools; the same in oann and oagent) that is a thing of its own gets a README.md: what it is, what is in it, how to
run or use it, where it fits. Short and current - update it in the same commit when the folder's contents change. A new
folder of that kind gets its README in the commit that creates it; tell agents so in their briefs. Not for build output
or small groupings inside a folder that are not things of their own.
