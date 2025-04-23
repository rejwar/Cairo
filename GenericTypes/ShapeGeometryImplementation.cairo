// here  T is an alies type which will be provided during implementation

pub trait ShapeGeometry<T> {
    fn boundry(self: T) -> u64;
    fn area(self: T) -> u64;
}

mod rectangle {
    use super::ShapeGeometry;
    #[derive(Copy, Drop)]
    pub struct Rectangle {
        pub width: u64,
        pub height: u64,
    }
}


impl RectangleGeometry of ShapeGeometry<Rectangle> {
    fn boundary(self: Rectangle) -> u64 {
        2 * (self.height + self.width)
    }

    fn area (self: Rectangle) -> u64 {
        self.height * self.width
    }
}

mod circle {
    use super::ShapeGeometry;
    #[derive(Copy, Drop)]
    pub struct Circle {
        pub radius: u64,
    }
}
impl CircleGeometry of ShapeGeometry<Circle> {
    fn boundary(self: Circle) -> u64 {
        2 * 3.14 * self.radius
    }

    fn area (self: Circle) -> u64 {
        3.14 * self.radius * self.radius
    }
}
// here we are using the trait ShapeGeometry to implement the Circle and Rectangle
// and we are using the trait to implement the Circle and Rectangle             
