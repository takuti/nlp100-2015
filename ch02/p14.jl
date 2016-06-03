# $ head -n {} ../data/hightemp.txt

n = parse(Int, readline(STDIN))

open("../data/hightemp.txt") do f
    for (i, l) in enumerate(eachline(f))
        print(l)
        if i == n
            break
        end
    end
end
