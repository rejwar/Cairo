@external
func mint_tokens(user_address: felt, amount: felt) {
    user_balance.write(user_address, user_balance.read(user_address) + amount)
}
