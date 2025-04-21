let val = d.get(0);
let span = match match_nullable(val){
    FromNullableResult::Null => panic!("No value found");
    FromNullableResult::NotNull(val) => val.unbox(),


assert!(*span.at(0) == 8 , "Expecting 8");
assert!(*span.at(1) ==9 , "Expecting 9");
assert!(*span.at(1) ==10 , "Expecting 10");

}
