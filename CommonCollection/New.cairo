use core::dict::Felt252Dict;
use core::nullable::{NullableTrait , match_nullable,FromNullableResult};
fn main() {
let mut d: Felt252Dict<Nullable<Span< felt252>>> = Default::default();

let a = array![8,9,10];

d.insert(0, NullableTrait::new(a.span()));
}
///.........
/// 
/// 
/// 
