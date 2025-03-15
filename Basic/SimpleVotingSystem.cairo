%lang starknet

@storage_var
func votes() -> (res: felt) {
}

@external
func vote() {
    let current_votes = votes.read();
    votes.write(current_votes + 1);
    return ();
}

@view
func get_votes() -> (res: felt) {
    let res = votes.read();
    return (res,);
}
