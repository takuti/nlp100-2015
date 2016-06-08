include("UK.jl")

d = UK.getbasic()

for (k, v) in d
    d[k] = replace(v, r"(\')+", s"")
end

println(d)
