%lang starknet

// ফাংশন ডিফাইন করা
@view
func Modulus(a: felt, b: felt) -> (res: felt) {
    assert b != 0; // শূন্য দিয়ে মডুলাস চেক করা
    let res = a % b; // মডুলাস করা
    return (res,);
}
