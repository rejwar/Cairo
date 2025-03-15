%lang starknet

@view
func CalculateArraySum(arr: felt*, size: felt) -> (res: felt) {
    let sum = 0;
    let i = 0;
    while (i < size) {
        sum = sum + arr[i];
        i = i + 1;
    }
    return (sum,);
}
