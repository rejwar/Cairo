fn main() {
    let reactangle = (30,40);
    let area = area(reactangle);
    println!("The area of the rectangle is: {}", area);
}

fn area (dimensions: (i32, i32)) -> i32 {
    let (width, height) = dimensions;
    width * height
}
