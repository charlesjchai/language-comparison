# Language Comparison
This is a programming language benchmark that counts primes.

The following programming languages have been benchmarked:
- C
- C++
- Rust
- Java
- Lua
- Python
- Vimscript
- CMake
## Criteria
Every script and programming language must achieve the following to meet approval:
- print every prime number up to 1048576
- use the sieve of eratosthenes
- use an array of bools to count the primes
- print the primes, separated by spaces, and a newline on the last line

## Benchmark results

C and C++ were compiled with GCC 16, and Lua was ran with LuaJIT. Benchmarked with `hyperfine --warmup=2` on an Orange Pi Zero 2W with a quad-core 64-bit ARM Cortex-A53 (1.5GHz).

### Time results (ms)
| Language  | Mean time | Standard deviation | Min time | Max time | Relative speed |
|-----------|-----------|--------------------|----------|----------|----------------|
| C         | 63.6      | 1.8                | 60.0     | 68.5     | 100% (baseline)|
| C++       | 55.2      | 2.2                | 50.8     | 61.5     | 115%           |
| Rust      | 64.9      | 1.6                | 62.2     | 68.3     | 98%            |
| Java      | 412       | 8.2                | 399.3    | 429.1    | 15.4%          |
| Lua       | 184.1     | 2.6                | 179      | 189.3    | 34.5%          |
| Python    | 2415.8    | 105                | 2273.9   | 2608.7   | 2.6%           |
| Vimscript | 76580.2 (🤪)| 150              | 76317.7  | 76847.5  | 0.08%          |
| CMake     | 77488     | 208.4              | 77212.1  | 77893.2  | 0.08%          |

### Memory usage (MiB)
| Language  | Mean usage | Standard deviation | Min usage | Max usage | Relative usage |
|-----------|------------|--------------------|-----------|-----------|----------------|
| C         | 2.9        | 0                  | 2.9       | 2.9       | 100% (baseline)|
| C++       | 4.1        | 0                  | 4.0       | 4.1       | 141%           |
| Rust      | 2.9        | 0                  | 2.9       | 2.9       | 100% (🤔)       |
| Java      | 47.6       | 0.1                | 47.4      | 47.7      | 1641%          |
| Lua       | 11.9       | 0                  | 11.9      | 11.9      | 410%           |
| Python    | 16.8       | 0                  | 16.8      | 16.8      | 579%           |
| Vimscript | 82.9       | 0                  | 82.9      | 82.9      | 2858.6%        |
| CMake     | 253.1 (🤣)  | 0.1               | 253       | 253.1     | 8727.5% (💀💀💀)|
