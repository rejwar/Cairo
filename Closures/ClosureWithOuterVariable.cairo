fn main() {
    let x = 7;
    let multiply = |y: u64| x*y;
    let result = multiply(3);
    println!("Result is {}", result);
}
