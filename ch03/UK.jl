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

end
