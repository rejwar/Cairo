%lang starknet

// ফাংশন ডিফাইন করা
@view
func ScopeErrorExample() -> (res: felt) {
    let x: felt = 10; // আউটার স্কোপ

    if (x > 0) {
        let y: felt = 20; // ইনার স্কোপ
    }

    return (y,); // এরর: y ইনার স্কোপের বাইরে এক্সেস করা যায় না
}
