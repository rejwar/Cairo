%lang starknet

// ফাংশন ডিফাইন করা
@view
func Subtract(a: felt, b: felt) -> (res: felt) {
    let res = a - b; // বিয়োগ করা
    return (res,);
}
