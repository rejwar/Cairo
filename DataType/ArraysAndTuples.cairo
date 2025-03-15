%lang starknet

// টাপল অ্যারে ডিফাইন করা
let people: (felt, felt)* = [(25, 100), (30, 90), (35, 80)]; // (age, score)

// টাপল অ্যারে এলিমেন্ট অ্যাক্সেস করা
@view
func GetPersonDetails(index: felt) -> (age: felt, score: felt) {
    let (age, score) = people[index];
    return (age, score);
}

// টাপল অ্যারে এলিমেন্ট আপডেট করা
@external
func UpdatePersonDetails(index: felt, new_age: felt, new_score: felt) {
    people[index] = (new_age, new_score);
    return ();
}
