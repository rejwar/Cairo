%lang starknet

@view
func GetStringLength(s: felt*) -> (res: felt) {
    let len = 0;
    while (s[len] != 0) {
        len = len + 1;
    }
    return (len,);
}
