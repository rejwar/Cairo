%lang starknet

// ফাংশন ডিফাইন করা
@view
func ScopeExample() -> (res: felt) {
    let x: felt = 10; // আউটার স্কোপ

    if (x > 0) {
        let y: felt = 20; // ইনার স্কোপ
        let x: felt = 30; // ইনার স্কোপে শ্যাডোয়িং
        return (x + y,); // রিটার্ন 50
    }

    return (x,); // রিটার্ন 10
}
