%lang starknet

// ফাংশন ডিফাইন করা
@external
func CheckPositive(num: felt) {
    assert num > 0; // সংখ্যাটি পজিটিভ কিনা চেক করা
    return ();
}
