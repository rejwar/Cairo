#[test]

fn smaller_cannot_hold_larger() {
    let larger = Rectangle { height: 7 , width: 8};
    let smaller = Rectangle { height: 3, width: 4};
    assert!(!smaller.can_hold(@larger), "Expected smaller rectangle to not hold larger rectangle");
    assert!(!larger.can_hold(@smaller), "Expected larger rectangle to not hold smaller rectangle");
}
