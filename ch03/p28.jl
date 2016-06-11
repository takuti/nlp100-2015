include("UK.jl")

d = UK.getbasic()

# all types of replacement
functions = [
        v -> replace(v, r"(\')+", s""), # strong font
        v -> replace(v, r"\*+", s""), # list
        v -> replace(v, r"\[\[([^|\[\]]+)[^\[\]]*\]\]", s"\1"), # internal link
        v -> replace(v, r"\{\{([^|\{\}]+)[^\{\}]*\}\}", s"\1"), # template block
        v -> replace(v, r"\[([^\[\]\s]+)([^\]]*?)\]", s"\1"), # external link
        v -> replace(v, r"\<ref[^\>]*\>(.+?)</ref>", s"(\1)"), # <ref>~~~</ref>
        v -> replace(v, r"\<ref[^\>]*\/\>", s""), # <ref ~~~ />
    ]

for (k, v) in d
    for func in functions
        v = func(v)
    end
    d[k] = v
end

println(d)
