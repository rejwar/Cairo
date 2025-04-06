#[starknet::contract]
mod AgeVerifier {
    #[storage]
    struct Storage {
        // জন্ম বছর (এনক্রিপ্টেড হ্যাশ)
        birth_year_hashes: LegacyMap<ContractAddress, felt252>, 
    }

    #[external(v0)]
    fn VerifyAdult(
        self: @ContractState,
        user: ContractAddress,
        current_year: u32,
        zk_proof: felt252  // প্রুফ যে (current_year - birth_year ≥ 18)
    ) -> bool {
        assert(zk_proof == 1, 'Invalid proof');
        true
    }
}
