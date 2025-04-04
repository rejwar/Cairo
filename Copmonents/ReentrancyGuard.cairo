@storage_var
func lock_status() -> (status: felt) {
}

@external
func secure_function() {
    assert lock_status.read() == 0
    lock_status.write(1)
    // Execute logic
    lock_status.write(0)
}
