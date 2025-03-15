%lang starknet

@external
func math_operations(a: felt, b: felt) -> (sum: felt, diff: felt, prod: felt) {
    let sum = a + b;
    let diff = a - b;
    let prod = a * b;
    return (sum, diff, prod);
}
