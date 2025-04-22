use core::traits::Into;

#[derive(Drop, PartialEq)]

struct Rectangle {
    width:u64,
    height:u64,
}

#[derive(Drop)]
struct Square {
side_length_:u64,
}

impl SquareIntoRectangle of Into<Square, Rectangle> {
    fn into (self: Square) -> Rectangle{
        Rectangle {width: self.side_length, height:self.side_length}
    }
}


fn main() {
    let square = Square{ side_length : 5};

    let result: Rectangle = square.into();
    let expected = Rectangle{ Width: 5 , height:5};
    assert!(result == expected,
  " A square is always convertibel to a rectangle with the same height and width");
}
