include("neko.jl")

ss = neko.load()
nouns = Array{AbstractString,1}()

for s in ss
    for m in s
        m["pos1"] == "サ変接続" && m["pos"] == "名詞" && push!(nouns, m["base"])
    end
end

println(nouns[1:10])
