// File: BatchTransfer.cairo
#[starknet::contract]
mod BatchTransfer {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        balances: LegacyMap<ContractAddress, u256>,
    }

    // একাধিক ট্রান্সফার একসাথে করুন (ZK-Rollup)
    #[external(v0)]
    fn BatchTransfer(
        ref self: ContractState,
        recipients: Array<ContractAddress>,
        amounts: Array<u256>
    ) {
        let sender = get_caller_address();
        let mut total = 0;
        
        // মোট অ্যামাউন্ট ক্যালকুলেট করুন
        loop {
            match amounts.pop_front() {
                Option::Some(amount) => {
                    total += amount;
                },
                Option::None => {
                    break;
                },
            };
        }
        
        assert(self.balances.read(sender) >= total, "Insufficient balance");
        
        // ট্রান্সফার এক্সিকিউট করুন
        loop {
            match recipients.pop_front() {
                Option::Some(to) => {
                    let amount = amounts.pop_front().unwrap();
                    self.balances.write(to, self.balances.read(to) + amount);
                },
                Option::None => {
                    break;
                },
            };
        }
        
        self.balances.write(sender, self.balances.read(sender) - total);
    }
}
