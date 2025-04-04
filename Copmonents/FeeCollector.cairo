@storage_var
func total_fees() -> (fees: felt) {
}

@external
func collect_fee(amount: felt) {
    total_fees.write(total_fees.read() + amount)
}
