%lang starknet

// টাপল ডিফাইন করা
let person: (felt, felt) = (25, 100); // (age, score)

// টাপল এলিমেন্ট অ্যাক্সেস করা
@view
func GetPersonAge() -> (res: felt) {
    let (age, _) = person;
    return (age,);
}

@view
func GetPersonScore() -> (res: felt) {
    let (_, score) = person;
    return (score,);
}

// টাপল এলিমেন্ট আপডেট করা
@external
func UpdatePerson(new_age: felt, new_score: felt) {
    person = (new_age, new_score);
    return ();
}
