fn IsPrime(n: u32 ) -> bool {
    if n <= 1 {
        return false;
    }

    if n==2 {
        return true;
    }
    
    if n%2 ==0 {
        return false;
    }


    let mut i =3;
    let mut IsPrime = true;

    loop {
        if i*i > n {
            break;
        }

        if n%i ==0{
            IsPrime = false;
            break;
        }
        i+=2;
    }
    IsPrime
}

#[executable] 
fn main(input:u32 ) -> bool {
    IsPrime
}
