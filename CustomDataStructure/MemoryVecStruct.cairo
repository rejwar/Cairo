use core::dict::{Felt252Dict, DictTrait};

#[derive (Copy)]

struct MemoryVec<T> {
    Data: Felt252Dict <Nullabke<T>,
    Len: usize ,
}
