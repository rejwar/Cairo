%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckNumberType(num: felt) -> (res: felt) {
    if (num > 0) {
        return (1,); // সংখ্যাটি পজিটিভ
    } else if (num < 0) {
        return (-1,); // সংখ্যাটি নেগেটিভ
    } else {
        return (0,); // সংখ্যাটি শূন্য
    }
}
