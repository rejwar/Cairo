%lang starknet

// ভেরিয়েবল ডিফাইন করা
let counter: felt = 0;

// ফাংশন ডিফাইন করা
@external
func IncrementCounter() {
    counter = counter + 1; // Increase counter by 1
    return ();
}

@view
func GetCounter() -> (res: felt) {
    let res = counter; // Return current counter value
    return (res,);
}
