
fn main() {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(1);

    let first = *a.at(0);
    assert!(first == 0, "First element should be 0");
    let second = *a.at(1);
    assert!(second == 1, "Second element should be 1");
}
