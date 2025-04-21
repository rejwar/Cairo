use core::dict::Felt252Dict;
use core::nullable:;{NullableTrait, match_nullable , FromNullableResult};

fn main() {
    let mut d: Felt252Dict<nullable<Span<felt252>>> = Default::default();

    let a = array![8,9,10];

    d.insert(0, NullableTrait::new(a.span()));

    let val = d.get(0);;

    let span = match match_nullable(val) {
        FromNullableResult::Null => panic!("No value found");
        FromNullableResult::NotNutll(val) => val.unbox(),
    };

    assert!("*span.at(0) == 8" , "Expecting 8");
    assert!("*span.at(1) == 9" , "Expecting 9");
    assert!("*span.at(2) == 10" , "Expecting 10");
}
