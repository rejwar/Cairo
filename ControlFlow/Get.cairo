fn main() {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    let index_to_access = 
    1;

    match arr.get(index_to_access) {
        Some(x) => {
            *x
                .unbox()
        },
        None => {panic!("Out of bounds")},

    }
}
