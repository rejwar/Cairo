%lang starknet

// টাপল ভেরিয়েবল ডিফাইন করা
let person: (felt, felt) = (25, 100); // (age, score)

// ফাংশন ডিফাইন করা
@external
func UpdatePerson(new_age: felt, new_score: felt) {
    person = (new_age, new_score); // Update person details
    return ();
}

@view
func GetPersonDetails() -> (age: felt, score: felt) {
    let (age, score) = person; // Return person details
    return (age, score);
}
