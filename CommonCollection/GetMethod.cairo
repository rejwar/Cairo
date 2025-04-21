fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    
    let index_to_access = 0;  // সঠিক ইনডেক্স ব্যবহার করা হয়েছে
    
    match arr.get(index_to_access) {
        Option::Some(x) => {
            *x.unbox()
        },
        Option::None => 
            panic!("Out of bounds")
        
    }
}
