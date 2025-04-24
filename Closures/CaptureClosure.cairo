// File: CaptureClosure.cairo

fn main() {
    let x = 8;
    let my_closure = |value: u64| x * (value + 3);
    let result = my_closure(2);
    println!("Result: {}", result);
}
