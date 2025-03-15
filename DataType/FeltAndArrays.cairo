%lang starknet

// অ্যারে ডিফাইন করা
let values: felt* = [1, 2, 3, 4, 5];

// অ্যারে এলিমেন্ট যোগ করা
@view
func SumArrayElements() -> (res: felt) {
    let sum = 0;
    let i = 0;
    while (i < values.len) {
        sum = sum + values[i];
        i = i + 1;
    }
    return (sum,);
}

// অ্যারে এলিমেন্ট আপডেট করা
@external
func UpdateArray(index: felt, new_value: felt) {
    values[index] = new_value;
    return ();
}
