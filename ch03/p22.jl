import JSON

s = open("../data/jawiki-country.json") do f
    for l in readlines(f)
        j = JSON.parse(l)
        if j["title"] == "イギリス"
            return j["text"]
        end
    end
end

regex = r"\[\[Category:(.+)\]\]"
for l in split(s, "\n")
    ismatch(regex, l) && println(replace(l, regex, s"\1"))
end