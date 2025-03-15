%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckOutsideRange(num: felt) -> (res: felt) {
    if (num < 10 or num > 20) {
        return (1,); // সংখ্যাটি ১০ এর নিচে বা ২০ এর উপরে
    }
    return (0,); // সংখ্যাটি রেঞ্জের মধ্যে
}
