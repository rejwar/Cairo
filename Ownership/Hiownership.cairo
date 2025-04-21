#[derive(Drop)]

struct Rectangle {
    height: u64,
    width: u64,
}

fn main() {
    let mut rec = Rectangle { height: 3 , width: 10};
    let first_snapshot = @rec;
    rec.height = 5;
    let first_area = calculate_area(first_snapshot);
    let second_area = calculate_area(@rec);

    println!("The area of the rectangle when the snapshot was taken is {}",first_area);
    println!("The current area of the rectangele is {}", second_area);
}
