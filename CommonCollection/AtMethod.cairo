fn main() {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(1);

    let first = *a.at(0);
    assert!(first == 0);

    let second = *a[1];
    assert! (second==1);
}
