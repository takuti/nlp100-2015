# $ sort col1.txt | uniq | wc
# 12 12 123

col1 = open("col1.txt") do f
    map(l -> rstrip(l), readlines(f))
end

println(length(Set(col1)))
