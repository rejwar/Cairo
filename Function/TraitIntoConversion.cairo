use core::traits::Into;

#[derive(Clone, Debug, PartialEq, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

#[derive(Drop)]
struct Square {
    side_length: u64,
}

impl SquareIntoRectangele of Into <Square, Rectangle> {
    fn into(self: Square) -> Rectangle {
        Rectangle {
            width: self.side_length,
            height: self.side_length,}
        }
    }

    fn main() {
        let square = Square {side_length: 5};
        let result: Rectangle = square.into();
        let expected = Rectangle {width: 5, height: 5};
        assert!(
            result == expected, 
            " A square is always a rectangle "
            ,);
    }
        
