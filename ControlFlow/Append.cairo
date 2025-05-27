fn  main() {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(2);
    a.append(4);

    let first_valaue= a.pop_front().unwrap();
    println!("First value: {}", first_valaue);
}
