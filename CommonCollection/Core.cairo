use core::dict::{Felt252Dict , Felt252DictEntryTrait};

fn custom_insert<T, +Felt252DictValue<T> , +Destruct<T> , +Drop<T>>( 
    ref dict: Felt252Dict<T> , key:felt252, value: T,    
)

{
    let (entry , _prev_value) = dict.entry(key);

    dict = entry.finalize(value);
}
