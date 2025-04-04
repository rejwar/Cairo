@storage_var
func oracle_data() -> (data: felt) {
}

@external
func update_oracle(new_data: felt) {
    oracle_data.write(new_data)
}
