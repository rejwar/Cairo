%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckDivisibleByThree(num: felt) -> (res: felt) {
    if (num % 3 == 0) {
        return (1,); // সংখ্যাটি ৩ দ্বারা বিভাজ্য
    } else {
        return (0,); // সংখ্যাটি ৩ দ্বারা বিভাজ্য নয়
    }
}
