fn main() {
    let a = [10,20,330,40,50].span();
    let mut index = 0;

    while index < 5 {
        println!("The value is : {}", a[index]);
        index += 1;
    }
}
