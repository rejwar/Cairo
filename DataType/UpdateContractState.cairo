%lang starknet

// স্টোরেজ ভেরিয়েবল
@storage_var
func Counter() -> (res: felt) {
}

// এক্সটার্নাল ফাংশন
@external
func IncrementCounter() {
    let current = Counter.read();
    Counter.write(current + 1);
    return ();
}

// ভিউ ফাংশন
@view
func GetCounter() -> (res: felt) {
    let res = Counter.read();
    return (res,);
}
