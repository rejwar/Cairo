// writing a test file in cairo 

#[derive(Drop)] 
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn can_hold(self:@Rectangle, other: @Rectangle ) -> bool;
}

impl RectanfleImpl of RectangleTrait{
    fn can_hold(self:@Rectangle, other: @Rectangle ) -> bool {
        *self.width > *other.width && self.height > *other.height
    }
}
