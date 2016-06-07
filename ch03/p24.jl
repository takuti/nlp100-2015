include("UK.jl")

regex = r".*\[\[(ファイル|File):([^\|]+)\|.+"
for l in split(UK.read(), "\n")
    ismatch(regex, l) && println(replace(l, regex, s"\2"))
end
