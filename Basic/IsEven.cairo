%lang starknet

@view
func CheckEven(num: felt) -> (res: felt) {
    let res = num % 2;
    return (res,);
}
