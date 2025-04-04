@storage_var
func is_registered(user_address: felt) -> (registered: felt) {
}

@external
func register_user(user_address: felt) {
    is_registered.write(user_address, 1)
}
