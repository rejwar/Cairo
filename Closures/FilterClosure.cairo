fn main() {
    let FileterEven = |num : u64 | num%2 == 0;
    let number = 14;

    if FileterEven(number){
        println!("{} is even .", number);
    } else {
        println!("{} is odd .", number);
    }
}
