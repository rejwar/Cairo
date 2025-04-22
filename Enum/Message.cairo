trait Processing{
    fn process(self: Message);
}

impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit => {println!("Quitting")},
            Message::Echo(value) => {println!("Echoing {}", value)},
            Message::Move((x,y)) => {println!("Moving from {} to {}" ,x,y)}, 
        }
    }
}
