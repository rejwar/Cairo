%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckComplexCondition(a: felt, b: felt) -> (res: felt) {
    if ((a > 0 and b > 0) or (a < 0 and b < 0)) {
        return (1,); // দুটি সংখ্যাই পজিটিভ বা দুটি সংখ্যাই নেগেটিভ
    }
    return (0,); // শর্ত পূরণ হয়নি
}
