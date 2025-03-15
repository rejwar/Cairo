%lang starknet

@external
func DivNum(a: felt, b: felt) -> (res: felt) {
    assert b != 0;
    let res = a / b;
    return (res,);
}
