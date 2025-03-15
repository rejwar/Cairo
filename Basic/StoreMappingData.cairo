%lang starknet

@storage_var
func KeyValueMap(key: felt) -> (res: felt) {
}

@external
func SetMappingValue(key: felt, val: felt) {
    KeyValueMap.write(key, val);
    return ();
}

@view
func GetMappingValue(key: felt) -> (res: felt) {
    let res = KeyValueMap.read(key);
    return (res,);
}
