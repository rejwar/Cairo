fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    let IndexToAccess = 
    1;

    match arr.get(IndexToAccess)
    {
        Some(x) => {
            *x
                .unbox()
        },
        None => {Panic! ("Out of bounds ")},
    }
}
