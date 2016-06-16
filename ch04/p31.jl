include("neko.jl")

sentences = neko.load()

surfaces = Array{AbstractString,1}()

for s in sentences
    for m in s
        m["pos"] == "動詞" && push!(surfaces, m["surface"])
    end
end

println(surfaces[1:10])
