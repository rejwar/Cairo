%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckPositive(num: felt) -> (res: felt) {
    if (num > 0) {
        return (1,); // সংখ্যাটি পজিটিভ
    }
    return (0,); // সংখ্যাটি পজিটিভ নয়
}
