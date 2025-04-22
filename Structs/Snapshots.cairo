#[generate_trait]
impl RectangleImpl of RectangleTrait{
    fn area(self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)

    }

    fn scale (ref self: Rectangle, factor: u64){
        self.width *= factor;
        self.height *= factor;
    }
}


fn main() {
    let mut rect2 = Rectangle{width:10 , height:20};
    rect2.scale(2);
    println!("The new size is (width: {} , height: {})", rect2.width, rect2.height);
}
