fn vending_machine_accept(coin::Coin) -> bool {
    match coin {
        Coin::Dime => true,
        _=>false,
    }
}
