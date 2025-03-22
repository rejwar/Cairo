%lang starknet

// ফাংশন ডিফাইন করা
@view
func NestedScopeExample() -> (res: felt) {
    let x: felt = 10; // আউটার স্কোপ

    if (x > 0) {
        let y: felt = 20; // প্রথম ইনার স্কোপ

        if (y > 0) {
            let z: felt = 30; // দ্বিতীয় ইনার স্কোপ
            return (x + y + z,); // রিটার্ন 60
        }
    }

    return (x,); // রিটার্ন 10
}
