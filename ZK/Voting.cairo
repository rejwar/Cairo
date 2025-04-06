#[starknet::contract]
mod Voting {
    #[storage]
    struct Storage {
        votes: LegacyMap<felt252, u256>, // প্রার্থী আইডি → ভোট সংখ্যা
        has_voted: LegacyMap<ContractAddress, bool>,
    }

    #[external(v0)]
    fn CastVote(
        ref self: ContractState,
        candidate: felt252,
        zk_proof: felt252  // প্রুফ যে ভোটার ভোট দেয়নি
    ) {
        let voter = get_caller_address();
        assert(zk_proof == 1, 'Already voted');
        self.votes.write(candidate, self.votes.read(candidate) + 1);
        self.has_voted.write(voter, true);
    }
}
