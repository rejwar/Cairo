// File: ClosureExample.cairo

fn main() {
    let double = |value: u64| value * 2;
    let result = double(5);
    println!("Double of 5 is {}", result);
}
