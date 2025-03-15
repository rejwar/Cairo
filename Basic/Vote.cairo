%lang starknet

@storage_var
func VoteCount() -> (res: felt) {
}

@external
func CastVote() {
    let count = VoteCount.read();
    VoteCount.write(count + 1);
    return ();
}

@view
func GetVotes() -> (res: felt) {
    let res = VoteCount.read();
    return (res,);
}
