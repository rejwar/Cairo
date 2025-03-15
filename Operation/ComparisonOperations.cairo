%lang starknet

// ফাংশন ডিফাইন করা
@view
func CompareNumbers(a: felt, b: felt) -> (res: felt) {
    if (a == b) {
        return (1,); // সমান
    }
    if (a < b) {
        return (2,); // a ছোট
    }
    return (3,); // a বড়
}
