include("UK.jl")

for l in split(UK.read(), "\n")
    ismatch(r"\[\[Category:.+\]\]", l) && println(l)
end
