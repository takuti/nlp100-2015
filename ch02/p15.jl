# $ tail -n {} ../data/hightemp.txt

n = parse(Int, readline(STDIN))

open("../data/hightemp.txt") do f
    for l in readlines(f)[(end - n + 1):end]
        print(l)
    end
end
