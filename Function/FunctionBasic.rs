fn main() {
    let width = 800;
    let height = 600;
    let area = area(width, height);
    println!("The area of the rectangle is: {}", area);
}

fn area
(width: i32, height: i32) -> i32 {
    width * height
}
