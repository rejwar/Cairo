fn plus_one(x: Option<u8>) -> Option<u8> {
    match x {
        Some (val) => Some (val +1 ),
        None => None,
    }
}

fn main() {
    let five: Option<u8> = Some(5);
    let six: Option<u8> = plus_one(five);
    let none = plus_one(None);
}
