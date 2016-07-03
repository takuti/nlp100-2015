include("neko.jl")

ss = neko.load()
nominal = Array{AbstractString,1}()

for s in ss
    for mi in 2:(length(s) - 1)
        s[mi]["surface"] != "の" && continue
        s[mi - 1]["pos"] == "名詞" && s[mi + 1]["pos"] == "名詞" && push!(nominal, string(s[mi - 1]["surface"], "の", s[mi + 1]["surface"]))
    end
end

println(nominal[1:10])
