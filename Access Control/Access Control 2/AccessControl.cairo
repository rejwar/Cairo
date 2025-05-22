#[starknet::contract]
mod vulnerable_ownable {
    use starknet::ContractAddress;
    use starknet::get_caller_address;

    #[storage]
    struct Storage {
        owner: ContractAddress
    }

    #[constructor]
    fn constructor(ref self: ContractState, initial_owner: ContractAddress) {
        self.owner.write(initial_owner);
    }

    #[external(v0)]
    fn transfer_ownership(ref self: ContractState, new_owner: ContractAddress) {
        let caller = get_caller_address();
        assert(caller == self.owner.read(), 'Caller is not owner');
        self.owner.write(new_owner);
    }

    #[external(v0)]
    fn withdraw_funds(ref self: ContractState, amount: u128) {
        // কোন অ্যাক্সেস কন্ট্রোল চেক নেই!
        let contract_address = contract_address_const::<0x1234>();
        contract_address.transfer(amount);
    }
}
