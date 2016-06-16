include("neko.jl")

ss = neko.load()
bases = Array{AbstractString,1}()

for s in ss
    for m in s
        m["pos"] == "動詞" && push!(bases, m["base"])
    end
end

println(bases[1:10])
