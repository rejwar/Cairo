use core::traits::TryInto;

#[derive(Drop)]

struct  Rectangle {
    width: u64,
    height: u64,
}

#[derive(Drop, PartialEq)]
struct Square {
    side_length:u64,
}


impl TryInto<Square> of Rectangle {
    fn try_into(self: Rectangle) -> Option<Square> {
        if self.height == self.width {
            Option::Some(Square { side_length: self.height })
        } else {
            Option::None(())
        }
    }
}


fn main() {
    let rectangle = Rectangle { width: 5, height: 5 };
    let result: Square = rectangle.try_into().unwrap();
    let expected = Square { side_length: 5 };
    assert!(result == expected, "The rectangle should convert to the square with side length 5");
    
    let rectangle = Rectangle { width: 5, height: 10 };
    let result: Option<Square> = rectangle.try_into();
    assert!(result.is_none(), "The rectangle should not convert to a square since width and height are different");
    }
