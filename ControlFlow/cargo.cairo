fn main() {
    let mut arr=ArrayTrait::<u128>::new();
    arr.append(1);
    let index_to_access = 1;

    match arr.get (index_to_access) {
        Some(x) => {
            // Accessing the value at the specified index
            *x
        }. unbox()
        }
        None => {
            // Handle the case where the index is out of bounds
            println!("Index {} is out of bounds", index_to_access);
        }
    }
}
