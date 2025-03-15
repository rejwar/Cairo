%lang starknet

@view
func IsPrime(n: felt) -> (res: felt) {
    if (n <= 1) {
        return (0,);
    }
    let i = 2;
    while (i * i <= n) {
        if (n % i == 0) {
            return (0,);
        }
        i = i + 1;
    }
    return (1,);
}
