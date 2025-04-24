fn main() {
    let concatenate = | str1: felt252 , str2: felt252 | str1 + str2;{
        println!("Merged : {}", concatenate('Hello', 'cairo'));
    };
}
