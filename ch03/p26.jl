include("UK.jl")

d = Dict()
k = ""
flg = false

for l in split(UK.read(), "\n")
    if ismatch(r"^\{\{基礎情報 国$", l)
        flg = true
        continue
    end

    if flg
        ismatch(r"^\}\}$", l) && break

        m = match(r"\|(.+)\s\=\s(.+)", l)
        if m != nothing
            k, v = m.captures[1], m.captures[2]
            d[k] = replace(v, r"(\')+", s"")
        else
            d[k] = string(d[k], l)
        end
    end
end

println(d)
