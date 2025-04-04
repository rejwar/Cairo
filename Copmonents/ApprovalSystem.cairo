@storage_var
func is_approved(user_address: felt) -> (approved: felt) {
}

@external
func approve_user(user_address: felt) {
    is_approved.write(user_address, 1)
}
