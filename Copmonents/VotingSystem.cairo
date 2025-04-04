@storage_var
func votes(candidate_id: felt) -> (count: felt) {
}

@external
func cast_vote(candidate_id: felt) {
    votes.write(candidate_id, votes.read(candidate_id) + 1)
}
