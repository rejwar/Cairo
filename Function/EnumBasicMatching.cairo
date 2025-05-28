#[derive(Drop)]
enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter,
}

fn  main() {
    let coin = Coin::Penny;
    let mut count = 0;
    match coin {
        Coin::Penny => println!("It's a penny!"),
        Coin::Nickel => println!("It's a nickel!"),
        Coin::Dime => println!("It's a dime!"),
        Coin::Quarter => println!("It's a quarter!"),
    }
}
