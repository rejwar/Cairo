#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_felt252_to_u8() {
        let number: felt252 = 5;
        let res = parse_u8 (number).unwrap();
    }

    #[test]
    #[should_panic]
    fn test_felt252_to_u8_panic(){
        let number: felt252 = 300;
        let res = parse_u8 (number).unwrap();
    }
}
