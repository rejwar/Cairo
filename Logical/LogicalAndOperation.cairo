%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckBothPositive(a: felt, b: felt) -> (res: felt) {
    if (a > 0 and b > 0) {
        return (1,); // দুটি সংখ্যাই পজিটিভ
    }
    return (0,); // যেকোনো একটি বা দুটি সংখ্যা পজিটিভ নয়
}
