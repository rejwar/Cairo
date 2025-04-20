fn main() {
    let x:u64 = 2;
    println!("The value of x is {} of type u64",x);

    let x: felt252 = x.into();

    println!("The value of x is {} of type felt252", x);
}
