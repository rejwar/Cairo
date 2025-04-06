// File: ZkProofGenerator.cairo
#[starknet::contract]
mod ZkProofGenerator {
    #[external(v0)]
    fn GenerateAgeProof(birth_year: u32) -> felt252 {
        let current_year = 2024;
        if current_year - birth_year >= 18 {
            1 // Valid proof
        } else {
            0 // Invalid
        }
    }
}
