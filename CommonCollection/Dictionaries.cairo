use core::dict::Felt252Dict;

fn main() {
    let mut balances: Felt252Dict<u64> = Default::default();

    balances.insert('Alex' , 100);
    balances.insert('Maria' , 200);

    let AlexBalance = balances.get('Alex');
    assert!(AlexBalance == 100 , "Balance is not 100");

    let MariaBalance = balances.get('Maria');
    assert!(MariaBalance == 200 , "Balance is not 200");
}
