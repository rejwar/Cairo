fn main() {
    let mut a = ArrayTrait::new();
    a.append(10);
    a.append(20);
    a.append(30);

    let i = 0;
    let val0 = *a.at(i);
    assert(val0 == 10);

    let i = 2;
    let val2 = *a.at(i);
    assert(val2 == 30);
}
