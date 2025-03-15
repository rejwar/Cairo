%lang starknet

@view
func CalcFact(n: felt) -> (res: felt) {
    if (n == 0) {
        return (1,);
    }
    let res = n * CalcFact(n - 1);
    return (res,);
}
