const BaseFee:felt252 = 100;
const ComputedFee:felt252 = consteval_int!(BaseFee * 2);

fn main() {
    println!("Base Fee:{}", ComputedFee);
}
