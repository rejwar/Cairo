%lang starknet

@external
func AddNum(a: felt, b: felt) -> (res: felt) {
    let res = a + b;
    return (res,);
}
