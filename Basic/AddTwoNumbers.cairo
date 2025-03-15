%lang starknet

@external
func add(a: felt, b: felt) -> (res: felt) {
    let res = a + b;
    return (res,);
}
