# File: RectangleMethods.cairo

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn Area(self: @Rectangle) -> u64;
}

impl RectangleImpl of RectangleTrait {
    fn Area(self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}

fn main() {
    let rect1 = Rectangle {
        width: 30,
        height: 50,
    };
    let area = rect1.Area();
    println!("Area is {}", area);
}
