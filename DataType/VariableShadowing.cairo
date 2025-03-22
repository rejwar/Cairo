%lang starknet

// ফাংশন ডিফাইন করা
@view
func ShadowExample() -> (res: felt) {
    let x: felt = 10; // প্রথম ভেরিয়েবল
    let x: felt = 20; // দ্বিতীয় ভেরিয়েবল (শ্যাডোয়িং)
    return (x,); // রিটার্ন 20
}
