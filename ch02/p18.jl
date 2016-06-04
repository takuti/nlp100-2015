# $ sort -k3 ../data/hightemp.txt

lines = open("../data/hightemp.txt") do f
    readlines(f)
end

sort!(lines, by=l->parse(Float64, split(l, "\t")[3]))

for l in lines
    print(l)
end
