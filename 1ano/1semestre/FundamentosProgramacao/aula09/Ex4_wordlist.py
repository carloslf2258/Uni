import bisect

with open("wordlist.txt", "r") as f:
    words = f.read().splitlines()

index_ea = bisect.bisect_left(words, "ea")
index_eb = bisect.bisect_left(words, "eb")

count = index_eb - index_ea
print(count)
