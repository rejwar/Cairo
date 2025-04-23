#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn larger_can_hold_smaller() {
        let larger = Rectangle { height: 7 ,width: 8};
        let smaller = Rectangle { height: 3, width: 4 };

        assert!(larger.can_hold(&smaller), "larger rectangle should hold smaller rectangle");
    }
}
