fn roll(value:u8) {
    match value {
        0 | 1 | 2 => println!("You won!"),
        3 => println!("You can roll again"),
        _=> println!("You lost ..."),
    }
}
