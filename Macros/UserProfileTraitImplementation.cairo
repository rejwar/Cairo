//# File: UserProfile.cairo

#[derive(Copy, Drop)]
struct UserProfile {
    UserId: u64,
    Username: felt252,
    Balance: u64,
}

trait UserProfileTrait {
    fn GetBalance(self: @UserProfile) -> u64;
    fn UpdateBalance(ref self: UserProfile, Amount: u64);
}

impl UserProfileImpl of UserProfileTrait {
    fn GetBalance(self: @UserProfile) -> u64 {
        (*self.Balance)
    }

    fn UpdateBalance(ref self: UserProfile, Amount: u64) {
        self.Balance += Amount;
    }
}

fn main() {
    let mut User = UserProfile {
        UserId: 101,
        Username: 'Md.',
        Balance: 500,
    };

    User.UpdateBalance(300);
    println!("Updated Balance: {}", User.GetBalance());
}
