#[starknet::contract]
mod ZkRollupExample {
    use array::ArrayTrait;
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        balances: LegacyMap<ContractAddress, u256>, // ব্যবহারকারীদের ব্যালেন্স
        batch_count: u64, // কতগুলি ব্যাচ সম্পন্ন হয়েছে
    }

    // একাধিক ট্রানজেকশন ব্যাচ করুন (ZK Rollup-এর মূল ধারণা)
    #[external(v0)]
    fn ProcessBatch(
        ref self: ContractState,
        senders: Array<ContractAddress>,
        receivers: Array<ContractAddress>,
        amounts: Array<u256>
    ) {
        assert(
            senders.len() == receivers.len() && receivers.len() == amounts.len(),
            'Invalid batch data'
        );

        // প্রতিটি ট্রানজেকশন প্রসেস করুন
        loop {
            match senders.pop_front() {
                Option::Some(sender) => {
                    let receiver = receivers.pop_front().unwrap();
                    let amount = amounts.pop_front().unwrap();

                    // ব্যালেন্স আপডেট করুন
                    let sender_balance = self.balances.read(sender);
                    assert(sender_balance >= amount, 'Insufficient balance');
                    self.balances.write(sender, sender_balance - amount);
                    self.balances.write(receiver, self.balances.read(receiver) + amount);
                },
                Option::None => break,
            };
        }

        // ব্যাচ কাউন্ট ইনক্রিমেন্ট করুন
        self.batch_count.write(self.batch_count.read() + 1);
    }

    // ব্যাচের সংখ্যা রিটার্ন করুন
    #[external(v0)]
    fn GetBatchCount(self: @ContractState) -> u64 {
        self.batch_count.read()
    }
}
