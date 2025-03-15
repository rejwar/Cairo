%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckConditions(a: felt, b: felt) -> (res: felt) {
    if (a > 0 and b > 0) {
        return (1,); // দুটি সংখ্যাই পজিটিভ
    }
    if (a > 0 or b > 0) {
        return (2,); // যেকোনো একটি সংখ্যা পজিটিভ
    }
    return (0,); // কোনো সংখ্যাই পজিটিভ নয়
}
