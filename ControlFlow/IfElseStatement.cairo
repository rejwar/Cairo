%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckEvenOdd(num: felt) -> (res: felt) {
    if (num % 2 == 0) {
        return (1,); // সংখ্যাটি জোড়
    } else {
        return (0,); // সংখ্যাটি বিজোড়
    }
}
