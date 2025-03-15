%lang starknet

@external
func MulNum(a: felt, b: felt) -> (res: felt) {
    let res = a * b;
    return (res,);
}
