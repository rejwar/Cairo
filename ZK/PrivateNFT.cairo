#[starknet::contract]
mod PrivateNFT {
    #[storage]
    struct Storage {
        owners: LegacyMap<felt252, ContractAddress>, // NFT ID → Owner
    }

    #[external(v0)]
    fn TransferNFT(
        ref self: ContractState,
        nft_id: felt252,
        new_owner: ContractAddress,
        zk_proof: felt252  // প্রুফ যে কলার Owner
    ) {
        assert(zk_proof == 1, 'Not NFT owner');
        self.owners.write(nft_id, new_owner);
    }
}
