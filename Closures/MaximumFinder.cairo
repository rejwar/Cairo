fn main() {
    let max_value = |a: u64 , b:u64| if a > b {a} else {b};
    println!("Hello, world!");
    println!("Max :{}", max_value(10, 20));
    println!("Max :{}", max_value(20, 10));
    println!("Max :{}", max_value(10, 10));
    println!("Max :{}", max_value(0, 0));
    println!("Max :{}", max_value(0, 10));
    println!("Max :{}", max_value(10, 0));
    println!("Max :{}", max_value(0, 20));
    println!("Max :{}", max_value(20, 0));


}
