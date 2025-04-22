fn value_in_cents(coin: Coin) -> felt252 {
    match coin {
        Coin::Penny => {
            println!("Lucky penny");
            1
        },

        Coin::Nickel => 5,
        Coin::Dine =>10,
        Coin::Quarter => 25,
    }
}
