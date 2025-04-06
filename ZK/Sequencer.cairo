// File: Sequencer.cairo
#[starknet::contract]
mod Sequencer {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        pending_txs: LegacyMap<u64, Array<felt252>>,
    }

    // ট্রানজেকশন এড করুন
    #[external(v0)]
    fn AddTransaction(ref self: ContractState, tx_hash: felt252) {
        let block_number = get_block_number();
        self.pending_txs.write(block_number, tx_hash);
    }

    // প্রুভারে ট্রানজেকশন পাঠান
    #[external(v0)]
    fn SendToProver(self: @ContractState, block_number: u64) -> Array<felt252> {
        self.pending_txs.read(block_number)
    }
}
