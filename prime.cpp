#include <array>
#include <cstddef>
#include <iostream>
using std::size_t;

int main() {
    constexpr size_t n{1048576};
    static std::array<bool, n> arr; // Stack overflow errors
    arr[0] = true;
    arr[1] = true;
    for (size_t prime{2}; prime * prime < n;
         prime++) {
        if (!arr[prime]) {
            for (size_t i{prime * prime}; i < n;
                 i += prime) {
                arr[i] = true;
            }
        }
    }
    std::ios::sync_with_stdio(false);
    std::cin.tie(nullptr);
    for (size_t i{2}; i < n; i++) {
        if (!arr[i]) {
            std::cout << i << ' ';
        }
    }
    std::cout << '\n';
    return 0;
}
