include("neko.jl")

ss = neko.load()
juncture = Array{AbstractString,1}()

for s in ss
    noun = Array{AbstractString,1}()

    for mi in 1:length(s)
        if s[mi]["pos"] == "名詞"
            push!(noun, s[mi]["surface"])
        else
            length(noun) >= 2 && push!(juncture, join(noun, ""))
            noun = Array{AbstractString,1}()
        end
    end

    length(noun) >= 2 && push!(juncture, join(noun, ""))
end

println(juncture[1:20])
