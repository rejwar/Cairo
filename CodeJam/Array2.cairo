use dict::Felt252Dict;
use dict::Felt252DictTrait;
use core::felt252;

fn main() {
    let mut balances = Felt252Dict::new();

    let alex_key = 'Alex';
    let bob_key = 'Bob';

    balances.insert(alex_key, 100);
    balances.insert(bob_key, 50);

    let alex_balance = balances.get(alex_key);
    let bob_balance = balances.get(bob_key);

    assert(alex_balance == 100, 'Alex should have 100');
    assert(bob_balance == 50, 'Bob should have 50');

    balances.insert(alex_key, 150);

    let alex_balance_2 = balances.get(alex_key);

    assert(alex_balance_2 == 150, 'Alex should now have 150');
}
