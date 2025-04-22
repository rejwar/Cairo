#[derive(Copy, Drop)]
struct Rectangle {
    width:u64 ,
    height: u64,
}

trait RectangleTrait{
    fn Area(Self: @Rectangle) -> u64;
}

impl RectangleImpl of RectangleTrait {
    fn Area(Self: @Rectangle) -> u64 {
        (*Self.width) *(*Self.height)
    }
}

fn main() {
    let rect1 = Rectangle{
        width: 30,
        height: 50,
    };

    let area = rect1.Area();
    println!("Area is {}",area);
}
