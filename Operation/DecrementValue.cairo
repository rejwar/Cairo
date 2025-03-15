%lang starknet

// ভেরিয়েবল ডিফাইন করা
let counter: felt = 10;

// ফাংশন ডিফাইন করা
@external
func Decrement() {
    counter = counter - 1; // ডিক্রিমেন্ট করা
    return ();
}

@view
func GetCounter() -> (res: felt) {
    let res = counter; // বর্তমান মান রিটার্ন করা
    return (res,);
}
