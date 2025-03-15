%lang starknet

@view
func CalcFib(n: felt) -> (res: felt) {
    if (n == 0) {
        return (0,);
    }
    if (n == 1) {
        return (1,);
    }
    let res = CalcFib(n - 1) + CalcFib(n - 2);
    return (res,);
}
