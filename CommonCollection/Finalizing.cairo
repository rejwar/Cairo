fn main() {
    let mut dict: Felt252Dict<u64> = Default::default();

    custom_insert(ref dict , '0', 100);

    let val = custom_get (ref dict , '0');

    assert!(val ==100  , "Expecting 100");
}
