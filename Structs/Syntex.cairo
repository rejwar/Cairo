#[generate_trait] 
impl RectangleImpl of RecatngleTrait {
    fn area (self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }

    fn new(width:u64 , height:u64) -> Rectangle{
        Recatngle {width:size , height:size }
    }

    fn avg(lhs: @Rectangle, rhs:@Rectangle) -> Recatngle {
        Rectangle {
            width: ((*lhs.width) + (*rhs.width)) / 2, height:((lhs.height) + (*rhs.height)) /2,
        }
    }
}

fn main() {
    let rect1 = RecatngleTrait:new(30 ,50);
    let rect2 = RecatngleTrait::square(10);

    println!("the average Rectangle of {":?} and {:?} is{:?} ",
    @rect1,
    @rect2,
    RectangleTrait::avg (@rect1 , @rect2),
);
}
