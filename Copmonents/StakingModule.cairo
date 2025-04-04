@storage_var
func stake_amount(user_address: felt) -> (amount: felt) {
}

@external
func stake_tokens(amount: felt) {
    stake_amount.write(caller, stake_amount.read(caller) + amount)
}
