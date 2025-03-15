%lang starknet

// ভেরিয়েবল ডিফাইন করা
let counter: felt = 0;

// ফাংশন ডিফাইন করা
@external
func Increment() {
    counter = counter + 1; // ইনক্রিমেন্ট করা
    return ();
}

@view
func GetCounter() -> (res: felt) {
    let res = counter; // বর্তমান মান রিটার্ন করা
    return (res,);
}
