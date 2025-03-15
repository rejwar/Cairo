%lang starknet

@external
func SubNum(a: felt, b: felt) -> (res: felt) {
    let res = a - b;
    return (res,);
}
