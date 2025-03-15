
%lang starknet

@storage_var
func balance() -> (res: felt) {
}

@external
func update_balance(new_balance: felt) {
    balance.write(new_balance);
    return ();
}

@view
func get_balance() -> (res: felt) {
    let res = balance.read();
    return (res,);
}
