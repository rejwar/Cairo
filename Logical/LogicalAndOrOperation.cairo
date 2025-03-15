%lang starknet

// ফাংশন ডিফাইন করা
@view
func CheckComplexCondition(a: felt, b: felt, c: felt) -> (res: felt) {
    if ((a > 0 and b > 0) or (c > 0)) {
        return (1,); // (a এবং b পজিটিভ) অথবা (c পজিটিভ)
    }
    return (0,); // শর্ত পূরণ হয়নি
}
