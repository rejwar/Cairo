%lang starknet

@storage_var
func counter() -> (res: felt) {
}

@external
func increment() {
    let current = counter.read();
    counter.write(current + 1);
    return ();
}

@view
func get_counter() -> (res: felt) {
    let res = counter.read();
    return (res,);
}
