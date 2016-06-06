include("UK.jl")

for lmatch in eachmatch(r"(=+)\s*([^=]+)\s*=+\n", UK.read())
    level = length(lmatch.captures[1]) - 1
    sec = lmatch.captures[2]
    println("$level $sec")
end
