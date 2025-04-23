fn sum_n(n: usize) -> usize {
    let mut sum = 0;
    for i in 1..=n {
        sum += i;
    }
    return sum;
}
fn main() {
    let n = 10;
    let result = sum_n(n);
    println!("The sum of the first {} numbers is: {}", n, result);
}
// This is a simple Cairo program that calculates the sum of the first n natural numbers.
// It defines a function `sum_n` that takes an integer n and returns the sum of the first n numbers.        
