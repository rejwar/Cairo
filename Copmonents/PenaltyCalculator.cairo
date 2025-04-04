@storage_var
func penalty(user_address: felt) -> (amount: felt) {
}

@external
func impose_penalty(user_address: felt, amount: felt) {
    penalty.write(user_address, penalty.read(user_address) + amount)
}
