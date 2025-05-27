fn ComputeDivision(A: u64, B: u64) -> Result<u64, felt252> {
    if B == 0 {
        return Err("Division by zero is not allowed.");
    }
    return Ok(A / B);
}

fn main() {
    let DivisionResult = ComputeDivision(100, 5).unwrap();
    println!("Division Result: {}", DivisionResult);
}
