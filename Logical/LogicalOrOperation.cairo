%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckAnyPositive(a: felt, b: felt) -> (res: felt) {
    if (a > 0 or b > 0) {
        return (1,); // যেকোনো একটি সংখ্যা পজিটিভ
    }
    return (0,); // দুটি সংখ্যাই পজিটিভ নয়
}
