function getlines(filename)
    open(filename) do f
        map(l -> rstrip(l), readlines(f))
    end
end

col1 = getlines("col1.txt")
col2 = getlines("col2.txt")

# $ paste col1.txt col2.txt
open("merged_col1_col2.txt", "w") do f
    for (l1, l2) in zip(col1, col2)
        println(f, "$l1\t$l2")
    end
end
