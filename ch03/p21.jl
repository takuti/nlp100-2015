import JSON

s = open("../data/jawiki-country.json") do f
    for l in readlines(f)
        j = JSON.parse(l)
        if j["title"] == "イギリス"
            return j["text"]
        end
    end
end

for l in split(s, "\n")
    ismatch(r"\[\[Category:.+\]\]", l) && println(l)
end
