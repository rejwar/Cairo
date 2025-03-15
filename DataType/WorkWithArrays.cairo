%lang starknet

// অ্যারে ডিফাইন করা
let numbers: felt* = [10, 20, 30, 40, 50];

// অ্যারে এলিমেন্ট অ্যাক্সেস করা
@view
func GetArrayElement(index: felt) -> (res: felt) {
    let res = numbers[index];
    return (res,);
}

// অ্যারে এলিমেন্ট আপডেট করা
@external
func UpdateArrayElement(index: felt, new_value: felt) {
    numbers[index] = new_value;
    return ();
}

// অ্যারে সাইজ রিটার্ন করা
@view
func GetArraySize() -> (res: felt) {
    let res = numbers.len;
    return (res,);
}
