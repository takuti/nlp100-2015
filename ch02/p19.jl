# $ cat ../data/hightemp.txt | cut -f1 | sort | uniq -c | sort -nr

col1 = open("../data/hightemp.txt") do f
    map(l -> split(rstrip(l), "\t")[1], readlines(f))
end

# use PriorityQueue() to get sorted list w/o sorting
counts = Collections.PriorityQueue()
for word in col1
    counts[word] = get(counts, word, 0) - 1
end

while !isempty(counts)
    println(Collections.dequeue!(counts))
end
