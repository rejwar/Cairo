fn factorial(num: u64) -> felt252 {
    let mut result = 1;
    for i in 1..=num {
        result *= i as felt252;
    }
    result
}

fn main() {
    println!("Factorial of 5 is: {}", factorial(5));
}
