cmake_minimum_required(VERSION 3.15)

set(n 1048576)
math(EXPR last "${n} - 1")

set(prime 2)
math(EXPR prime_squared "${prime} * ${prime}")

while(prime_squared LESS n)
  if(NOT arr_${prime})
    foreach(i RANGE ${prime_squared} ${last} ${prime})
      set(arr_${i} TRUE)
    endforeach()
  endif()

  math(EXPR prime "${prime} + 1")
  math(EXPR prime_squared "${prime} * ${prime}")
endwhile()

set(result "")
foreach(i RANGE 0 ${last})
  if(NOT arr_${i})
    list(APPEND result ${i})
  endif()
endforeach()

list(JOIN result " " output)
message("${output}")
