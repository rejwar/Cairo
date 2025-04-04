@storage_var
func authenticated_users(user_address: felt) -> (auth: felt) {
}

@external
func authenticate_user(user_address: felt) {
    authenticated_users.write(user_address, 1)
}
