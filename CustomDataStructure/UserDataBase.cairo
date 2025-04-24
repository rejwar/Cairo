use core::dict::{Felt252Dict,DictTrait};

#[derive (Copy)]
struct UserDataBase<T> {
    UserUpdates: u64,
    Balances: Felt252Dict<T>,
}
