%lang starknet

// ফাংশন ডিফাইন করা
@view
func Multiply(a: felt, b: felt) -> (res: felt) {
    let res = a * b; // গুণ করা
    return (res,);
}
