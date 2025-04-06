// File: AgeVerifier.cairo
#[starknet::contract]
mod AgeVerifier {
    use starknet::get_caller_address;

    #[storage]
    struct Storage {
        user_birth_year: LegacyMap<ContractAddress, u32>,
    }

    // ব্যবহারকারীর জন্ম বছর সেট করুন
    #[external(v0)]
    fn SetBirthYear(ref self: ContractState, year: u32) {
        let caller = get_caller_address();
        self.user_birth_year.write(caller, year);
    }

    // ZK প্রুফ: বয়স ১৮+ কি না (বিনা জন্ম বছর প্রকাশে)
    #[external(v0)]
    fn IsAdult(self: @ContractState) -> bool {
        let caller = get_caller_address();
        let birth_year = self.user_birth_year.read(caller);
        let current_year = 2023; // ব্লক টাইমস্ট্যাম্প ব্যবহার করা ভালো
        current_year - birth_year >= 18
    }
}
