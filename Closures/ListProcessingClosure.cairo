fn main() {
    let Numbers = [3,6,9,12,15];
    let MultiplyByTwo = |num:u64| num * 2;

    for num in Numbers {
        println!("{} * 2  = {}", num, MultiplyByTwo(num));
    }
}
