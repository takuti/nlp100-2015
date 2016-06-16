module neko

function load()
    # mecab neko.txt -o neko.txt.mecab
    open("../data/neko.txt.mecab") do f
        sentences = Array{Array{Dict},1}()
        s = Array{Dict,1}()

        for l in readlines(f)
            l = rstrip(l)
            if l == "EOS"
                push!(sentences, s)
                s = Array{Dict,1}()
                continue
            end

            res = split(l, "\t")
            detail = split(res[2], ",")

            m = Dict{AbstractString,AbstractString}()
            m["surface"] = res[1]
            m["pos"] = detail[1]
            m["pos1"] = detail[2]
            m["base"] = detail[7]
            push!(s, m)
        end

        sentences
    end
end

end
