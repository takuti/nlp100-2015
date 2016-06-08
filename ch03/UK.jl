module UK

import JSON

function read()
    open("../data/jawiki-country.json") do f
        for line in readlines(f)
            j = JSON.parse(line)
            if j["title"] == "イギリス"
                return j["text"]
            end
        end
    end
end

function getbasic()
    d = Dict{UTF8String, UTF8String}()
    k = ""
    flg = false

    for l in split(read(), "\n")
        if ismatch(r"^\{\{基礎情報 国$", l)
            flg = true
            continue
        end

        if flg
            ismatch(r"^\}\}$", l) && break

            m = match(r"\|(.+)\s\=\s(.+)", l)
            if m != nothing
                k, v = m.captures[1], m.captures[2]
                d[k] = v
            else
                d[k] = string(d[k], l)
            end
        end
    end

    d
end

end
