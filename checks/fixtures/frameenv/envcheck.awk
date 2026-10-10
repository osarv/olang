# counts capturing lambdas whose environment is a stack slot: a "{ ptr @..lambda$N, ptr undef }" pair whose environment
# operand is an alloca of the same function
/^define / { delete al }
/= alloca / { split($1, a, " "); al[$1] = 1 }
/insertvalue \{ ptr, ptr \} \{ ptr @[^,]*lambda\$[0-9]+, ptr undef \}, ptr %/ {
    n = split($0, w, "ptr ")
    v = w[n]; sub(/,.*/, "", v)
    if (v in al) onstack++; else heap++
}
END { printf "%d %d\n", onstack + 0, heap + 0 }
