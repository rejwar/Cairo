struct NestedKey {
    outer: felt252,
    inner: felt252,
}

fn main() {
    let mut nested_dictionary = DefaultDict::<NestedKey, felt252>::new(0);

    // ডেটা যোগ করা
    let key1 = NestedKey { outer: 'user1', inner: 'name' };
    nested_dictionary.insert(key1, 'Alice');

    let key2 = NestedKey { outer: 'user1', inner: 'age' };
    nested_dictionary.insert(key2, '30');

    let key3 = NestedKey { outer: 'user2', inner: 'city' };
    nested_dictionary.insert(key3, 'Cairo');

    // ডেটা অ্যাক্সেস করা
    let user1_name = nested_dictionary.get(NestedKey { outer: 'user1', inner: 'name' });
    println!("User1 Name: {}", user1_name); // Output: User1 Name: Alice

    let user2_city = nested_dictionary.get(NestedKey { outer: 'user2', inner: 'city' });
    println!("User2 City: {}", user2_city); // Output: User2 City: Cairo
}
