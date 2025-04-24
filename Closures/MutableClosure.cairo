fn main() {

    let mut total = 0;

    let add_to_total = | amount:u64| total += amount;

    add_to_total(50);
    add_to_total(30);

    println!("Total: {}", total);

}
