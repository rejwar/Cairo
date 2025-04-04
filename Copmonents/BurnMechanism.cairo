@external
func burn_tokens(amount: felt) {
    let user_balance = user_balance.read(caller)
    assert user_balance >= amount
    user_balance.write(caller, user_balance - amount)
}
