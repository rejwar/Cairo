use core::dict::{Felt252Dict , Felt252DictEntryTrait};

fn custom_get<T , +Felt252DictValue<T> , +Drop<T> , +Copy<T>> (
    ref dict: Felt252Dict<T> , key: felt252,
) -> T{
    let (entry , prev_value) = dict.entry(key);

    let return_value = prev_value;

    dict = entry.finalize(prev_value);

    return_value;
}
