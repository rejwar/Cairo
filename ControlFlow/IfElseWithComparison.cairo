%lang starknet

// ফাংশন ডিফাইন করা
@view
func CompareNumbers(a: felt, b: felt) -> (res: felt) {
    if (a > b) {
        return (1,); // a বড়
    } else if (a < b) {
        return (-1,); // b বড়
    } else {
        return (0,); // দুটি সংখ্যা সমান
    }
}
