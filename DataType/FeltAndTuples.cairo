%lang starknet

// টাপল ডিফাইন করা
let data: (felt, felt, felt) = (10, 20, 30); // (a, b, c)

// টাপল এলিমেন্ট অ্যাক্সেস করা
@view
func GetTupleElement(index: felt) -> (res: felt) {
    if (index == 0) {
        let (a, _, _) = data;
        return (a,);
    }
    if (index == 1) {
        let (_, b, _) = data;
        return (b,);
    }
    if (index == 2) {
        let (_, _, c) = data;
        return (c,);
    }
    return (0,);
}

// টাপল এলিমেন্ট আপডেট করা
@external
func UpdateTuple(new_a: felt, new_b: felt, new_c: felt) {
    data = (new_a, new_b, new_c);
    return ();
}
