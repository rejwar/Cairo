%lang starknet

@view
func is_even(num: felt) -> (res: felt) {
    let res = num % 2;
    return (res,);
}
