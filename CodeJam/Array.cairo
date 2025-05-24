use core::dict::Felt252Dict;

fn main() {
    let mut Balances: Felt252Dict<u64> = Default::default();

    Balances.insert('Alex', 100);
    Balances.insert('Maria', 200);

    let AlexBalance = Balances.get('Alex');
    assert!(AlexBalance == 100, "Balance mismatch for Alex");

    let MariaBalance = Balances.get('Maria');
    assert!(MariaBalance == 200, "Balance mismatch for Maria");
}
