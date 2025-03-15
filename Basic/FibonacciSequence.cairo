%lang starknet

@view
func fibonacci(n: felt) -> (res: felt) {
    if (n == 0) {
        return (0,);
    }
    if (n == 1) {
        return (1,);
    }
    let res = fibonacci(n - 1) + fibonacci(n - 2);
    return (res,);
}
