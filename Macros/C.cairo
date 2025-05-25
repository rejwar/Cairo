use starknet::storage;

const StorageOffset: felt252 = consteval_int!(256 *2);

// Declare a storage variable for user data
#[storage]
struct Storage {
    user_data: LegacyMap<felt252, felt252>,
}

fn user_data_write(ref storage: Storage, index: felt252, value: felt252) {
    storage.user_data.write(index, value);
}

fn user_data_write(index: felt252, value: felt252) {
fn main(ref storage: Storage) {
    println!("StorageOffset: {}", StorageOffset);
}

fn main() {
    println!("StorageOffset: {}", StorageOffset);
}
