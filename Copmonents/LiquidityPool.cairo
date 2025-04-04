@storage_var
func pool_balance() -> (balance: felt) {
}

@external
func add_liquidity(amount: felt) {
    pool_balance.write(pool_balance.read() + amount)
}
