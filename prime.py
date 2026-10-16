n = 1048576
arr = [False] * n

prime = 2
while prime * prime < n:
    if not arr[prime]:
        for i in range(prime * prime, n, prime):
            arr[i] = True
    prime += 1

for i, val in enumerate(arr):
    if not val:
        print(f"{i}", end=" ")

print()
