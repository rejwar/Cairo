%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckNotOrCondition(a: felt, b: felt) -> (res: felt) {
    if (not (a == 0) or not (b == 0)) {
        return (1,); // যেকোনো একটি সংখ্যা শূন্য নয়
    }
    return (0,); // দুটি সংখ্যাই শূন্য
}
