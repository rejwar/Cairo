use  core ::dict::Felt252Dict;

fn main() {
    // Create a dictionary with Felt252 keys and values
let mut balances: Felt252Dict<u64> = Default::default();

    balances.insert('Alex', 100);
    balances.insert('Bob', 200);


    let alex_balance = balances.get('Alex');
    assert!(alex_balance == 100, "Alex should have 100 balance");

    let bob_balance = balances.get('Bob');
    assert!(bob_balance == 200, "Bob should have 200 balance");

}
