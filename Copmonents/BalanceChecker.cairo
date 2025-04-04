# File: BalanceChecker.cairo

@storage_var
func user_balance(user_address: felt) -> (balance: felt) {
}

@external
func check_balance(user_address: felt) -> (balance: felt) {
    let (balance) = user_balance.read(user_address)
    return (balance)
}
