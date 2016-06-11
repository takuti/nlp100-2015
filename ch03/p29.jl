using Requests

include("UK.jl")

d = UK.getbasic()

img_title = string("File:", d["国旗画像"])

res = Requests.get("https://en.wikipedia.org/w/api.php";
    query = Dict("action" => "query", "titles" => img_title, "prop" => "imageinfo", "iiprop" => "url", "format" => "json"))

j = Requests.json(res)
iter = values(j["query"]["pages"])
(d_page, state) = next(iter, start(iter))

println(d_page["imageinfo"][1]["url"])
