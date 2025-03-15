%lang starknet

// ফাংশন ডিফাইন করা
@view
func Add(a: felt, b: felt) -> (res: felt) {
    let res = a + b; // যোগ করা
    return (res,);
}
