#[derive(Drop)]

struct Guess {
    value: u64,
}

trait GuessTrait {
    fn new(value:u64)-> Guess;
}

impl GuuessImpl of GuessTrait {
    fn new(value:u64)-> Guess {
        if value < 1 {
            panic!("Guess must be  >=1 and <= 100");
        }
        Guess{ value}
    }
}
