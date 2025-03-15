%lang starknet

// স্টোরেজ ভেরিয়েবল ডিফাইন করা
@storage_var
func UserBalance() -> (res: felt) {
}

// কনস্ট্রাক্টর
@constructor
func InitializeBalance(init_balance: felt) {
    UserBalance.write(init_balance);
    return ();
}

// এক্সটার্নাল ফাংশন
@external
func UpdateBalance(new_balance: felt) {
    UserBalance.write(new_balance);
    return ();
}

// ভিউ ফাংশন
@view
func GetBalance() -> (res: felt) {
    let res = UserBalance.read();
    return (res,);
}
