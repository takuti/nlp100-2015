include("neko.jl")

freq = neko.count()

# most frequent 10 words
for (w, n) in freq[1:10]
    println(w, n)
end

# least frequent 10 words
for (w, n) in freq[(length(freq)-10):endof(freq)]
    println(w, n)
end
