%lang starknet

// ফাংশন ডিফাইন করা
func AddTwoNumbers(a: felt, b: felt) -> (res: felt) {
    let res = a + b;
    return (res,);
}

// স্টোরেজ ভেরিয়েবল ডিফাইন করা
@storage_var
func MyStorage() -> (res: felt) {
}

// কনস্ট্রাক্টর
@constructor
func InitializeStorage(init_val: felt) {
    MyStorage.write(init_val);
    return ();
}

// এক্সটার্নাল ফাংশন
@external
func UpdateStorage(new_val: felt) {
    MyStorage.write(new_val);
    return ();
}

// ভিউ ফাংশন
@view
func ReadStorage() -> (res: felt) {
    let res = MyStorage.read();
    return (res,);
}
