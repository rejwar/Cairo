fn main() {
    let mut NumberList: Array<u8> = array![43,55,100,65];

    let mut Largest = NumberList.pop_front().unwrap();

    while let Some(number) = NumberList.pop_front() {
        if number > Largest {
            Largest = number;
        }
    }

    println!("The largest number is {}", Largest);
}
