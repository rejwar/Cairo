use core::dict::Felt252Dict;

#[derive(Destruct)]
struct A {
    dict: Felt252Dict>,
}

fn main() {
    A {dict : Default::default()};
}
