fn is_prime (n: u32) -> bool {
    if n <= 1 {
        return false;
    }
    if n == 2 {
        return true;
    }
    if n % 2  == 0 {
        return false;
    }
    let mut i: u32 = 3;
    let mut is_prime = true;
    loop {
        if i * i > n {
            break;
        }
        if n % i == 0 {
            is_prime = false;
            break;
        }
        i += 2;
    }
    is_prime
}

    
#[executable] 
fn main(input: i32 ) -> bool  {
    is_prime(input)

}
