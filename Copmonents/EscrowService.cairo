@storage_var
func escrow_balance(user_address: felt) -> (balance: felt) {
}

@external
func deposit_escrow(amount: felt) {
    escrow_balance.write(caller, escrow_balance.read(caller) + amount)
}
