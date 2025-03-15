%lang starknet

// কনস্ট্যান্ট ডিফাইন করা
const MAX_VALUE: felt = 100;

// ফাংশন ডিফাইন করা
@view
func CheckValue(val: felt) -> (res: felt) {
    if (val > MAX_VALUE) {
        return (0,); // Invalid
    }
    return (1,); // Valid
}
