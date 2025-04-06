// File: StarknetToken.cairo (Layer 2)
// Cairo-তে ERC20 টোকেন
#[starknet::contract]
mod StarknetToken {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        balances: LegacyMap<ContractAddress, u256>,
    }

    #[external(v0)]
    fn Transfer(ref self: ContractState, to: ContractAddress, amount: u256) {
        let sender = get_caller_address();
        assert(self.balances.read(sender) >= amount, "Insufficient balance");
        self.balances.write(sender, self.balances.read(sender) - amount);
        self.balances.write(to, self.balances.read(to) + amount);
    }
}
