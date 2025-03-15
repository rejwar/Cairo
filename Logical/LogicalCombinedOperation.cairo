%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckCombinedCondition(a: felt, b: felt, c: felt) -> (res: felt) {
    if ((a > 0 and b > 0) or not (c == 0)) {
        return (1,); // (a এবং b পজিটিভ) অথবা (c শূন্য নয়)
    }
    return (0,); // শর্ত পূরণ হয়নি
}
