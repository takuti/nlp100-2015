# $ split -l {} ../data/hightemp.txt

l = parse(Int, readline(STDIN))

open("../data/hightemp.txt") do f
    for (i, line) in enumerate(readlines(f))
        print(line)
        if i % l == 0
            println("----")
        end
    end
end
