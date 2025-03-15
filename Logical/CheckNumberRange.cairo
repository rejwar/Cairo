%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckInRange(num: felt) -> (res: felt) {
    if (num >= 10 and num <= 20) {
        return (1,); // সংখ্যাটি ১০ এবং ২০ এর মধ্যে
    }
    return (0,); // সংখ্যাটি রেঞ্জের বাইরে
}
