fn main() {
    const N: usize = 1048576;
    let mut arr = vec![false; N];
    arr[0] = true;
    arr[1] = true;
    let mut prime: usize = 2;
    while prime * prime < N {
        if !arr[prime] {
            for i in (prime * prime..N).step_by(prime) {
                arr[i] = true;
            }
        }
        prime += 1;
    }
    for (i, val) in arr.iter().enumerate().take(N).skip(2) {
        if !val {
            print!("{i} ");
        }
    }
    println!();
}
