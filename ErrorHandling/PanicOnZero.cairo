#[panic_with('value is 0', wrap_not_zero)]
fn wrap_if_not_zero(value: felt252) {
    if value == 0 {
        None
    } else{
        Some(value)
    }
}

fn main() {
    wrap_if_not_zero(0);
    wrap_if_not_zero(0);
}
