include("UK.jl")

d = UK.getbasic()

for (k, v) in d
    v_ = replace(v, r"(\')+", s"")
    d[k] = replace(v_, r"\[\[([^|\[\]]+)[^\[\]]*\]\]", s"\1")
end

println(d)
