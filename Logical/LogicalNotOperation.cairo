%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckNotZero(num: felt) -> (res: felt) {
    if (not (num == 0)) {
        return (1,); // সংখ্যাটি শূন্য নয়
    }
    return (0,); // সংখ্যাটি শূন্য
}
