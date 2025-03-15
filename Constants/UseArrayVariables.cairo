%lang starknet

// অ্যারে ভেরিয়েবল ডিফাইন করা
let numbers: felt* = [1, 2, 3, 4, 5];

// ফাংশন ডিফাইন করা
@external
func UpdateArray(index: felt, new_value: felt) {
    numbers[index] = new_value; // Update array element
    return ();
}

@view
func GetArrayElement(index: felt) -> (res: felt) {
    let res = numbers[index]; // Return array element
    return (res,);
}
