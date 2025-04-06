// File: TxLifecycle.cairo
#[starknet::contract]
mod TxLifecycle {
    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        TxProcessed: TxProcessed,
    }

    #[derive(Drop, starknet::Event)]
    struct TxProcessed {
        tx_hash: felt252,
        status: bool,
    }

    #[external(v0)]
    fn ProcessTransaction(ref self: ContractState, tx_hash: felt252) {
        // স্টেপ ১: ভ্যালিডেশন
        let is_valid = validate_tx(tx_hash);
        
        // স্টেপ ২: স্টেট আপডেট
        if is_valid {
            self.emit(Event::TxProcessed(TxProcessed { tx_hash, status: true }));
        }
    }
}
