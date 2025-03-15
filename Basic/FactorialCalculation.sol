%lang starknet

@view
func factorial(n: felt) -> (res: felt) {
    if (n == 0) {
        return (1,);
    }
    let res = n * factorial(n - 1);
    return (res,);
}
