//# File: UserBalances.cairo

use core::dict::Felt252Dict;

fn main() {
    // Felt252Dict তৈরি করা
    let mut balances: Felt252Dict<u64> = Default::default();

    // Key-Value পেয়ার যোগ করা
    balances.insert(1, 100);  // UserId: 1, Balance: 100
    balances.insert(2, 200);  // UserId: 2, Balance: 200

    // Key থেকে Value রিড করা
    let user1_balance = balances.get(1);
    assert!(user1_balance == 100, "Balance mismatch for User 1");

    // Key-Value আপডেট করা
    balances.insert(1, 300);  // UserId: 1, Updated Balance: 300
    let updated_balance = balances.get(1);
    assert!(updated_balance == 300, "Balance update failed");
}
