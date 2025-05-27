struct Rectangle {
    width: u64,
    height: u64,
}
fn main() {
    let rectangle = Rectangle {width: 10,height: 20,};
    let area = area(rectangle);
    println!("Area of rectangle: {}", area);
}

fn area(rectangle : Rectangle) -> u64 {
    rectangle.width * rectangle.height
}
