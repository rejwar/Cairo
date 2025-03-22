%lang starknet

// স্ট্রাক্ট ডিফাইন করা
struct Person {
    name: felt,
    age: felt,
}

// ফাংশন ডিফাইন করা
@view
func GetPersonDetails() -> (name: felt, age: felt) {
    // টাপল ব্যবহার করা
    let person: (felt, felt) = (25, 100); // (age, score)

    // অ্যারে ব্যবহার করা
    let numbers: felt* = [1, 2, 3, 4, 5];

    // স্ট্রাক্ট ব্যবহার করা
    let p = Person { name: 42, age: 25 };

    // রিটার্ন করা
    return (p.name, p.age);
}
