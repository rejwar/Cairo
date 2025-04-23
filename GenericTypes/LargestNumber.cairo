fn Largest(ref NumberList: Array<u8> ) -> u8 {
    let mut Largest = NumberList.pop_front().unwrap();

    while let Some(Number) = NumberList.pop_front() {
        if Number > Largest {
            Largest = Number;
        }
    }
    Largest
}

fn main() {
    let mut NumberList = array![34,36,25,100,65];
    let Result = Largest(ref NumberList);
    println!("The largest number is {}", Result);
    let mut NumberList = array![102, 34, 53,89,54,3,43,8];
    let Result = Largest(ref NumberList);
    println!("The Largest Number is {}",Result)
}
