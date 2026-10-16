local n = 1048576
local arr = {}
arr[1] = true

local prime = 2
while prime * prime < n do
  if not arr[prime] then
    for i = prime * prime, n - 1, prime do
      arr[i] = true
    end
  end
  prime = prime + 1
end

local out = {}
for i = 2, n - 1 do
  if not arr[i] then
    out[#out + 1] = i
  end
end
io.write(table.concat(out, " "), "\n")
