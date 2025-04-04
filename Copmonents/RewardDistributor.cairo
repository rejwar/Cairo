@storage_var
func reward_balance(user_address: felt) -> (balance: felt) {
}

@external
func distribute_reward(user_address: felt, amount: felt) {
    reward_balance.write(user_address, reward_balance.read(user_address) + amount)
}
