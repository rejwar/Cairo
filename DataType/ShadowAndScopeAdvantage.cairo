%lang starknet

// ফাংশন ডিফাইন করা
@view
func ShadowAndScopeAdvantage() -> (res: felt) {
    let x: felt = 10; // আউটার স্কোপ

    if (x > 0) {
        let x: felt = 20; // ইনার স্কোপে শ্যাডোয়িং
        return (x,); // রিটার্ন 20
    }

    return (x,); // রিটার্ন 10
}
