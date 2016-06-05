include("UK.jl")

regex = r"\[\[Category:(.+)\]\]"
for l in split(UK.read(), "\n")
    ismatch(regex, l) && println(replace(l, regex, s"\1"))
end
