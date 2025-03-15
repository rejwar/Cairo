%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckNotAndCondition(a: felt, b: felt) -> (res: felt) {
    if (not (a == 0) and not (b == 0)) {
        return (1,); // a এবং b দুটিই শূন্য নয়
    }
    return (0,); // যেকোনো একটি বা দুটি সংখ্যা শূন্য
}
