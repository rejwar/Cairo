fn main() {
    let numbers = [1, 2, 3, 4, 5];
    let filter_ODD = |num:u64| num % 2 == 0;

    for num in numbers{
        if filter_odd(num) {
            println!("Odd number: {}", num);
        }
    }
}
