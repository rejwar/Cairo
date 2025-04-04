@storage_var
func has_access(user_address: felt) -> (access: felt) {
}

@external
func grant_access(user_address: felt) {
    has_access.write(user_address, 1)
}
