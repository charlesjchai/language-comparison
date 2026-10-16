const n = 1048576
let arr = repeat([0], n)

let prime = 2
while prime * prime < n
  if !arr[prime]
    for i in range(prime * prime, n - 1, prime)
      let arr[i] = 1
    endfor
  endif
  let prime += 1
endwhile

let i = 0
for val in arr
  if !val
    echon i . " "
  endif
  let i += 1
endfor
echo
