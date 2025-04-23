pub fn add_two(a: u32 ) -> u32 {
    a + 2;
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_add_two() {
        assert_eq!(4, add_two(2));
}

#[test]

fn wrong_check() {
    assert_eq!(5, add_two(2));
}
}
