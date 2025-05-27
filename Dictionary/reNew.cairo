use core::dict::Felt252Dict;

#[derive(starknet::Contract)]

struct A {
    dict: Felt252Dict<u128>,
} 

fn main() {
    
    A { dict: Default ::default() }
        .deploy()
        .expect("Failed to deploy contract");
}
