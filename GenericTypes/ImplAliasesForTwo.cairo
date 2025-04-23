// impl aliases

trait Two<T> {
    fn two() -> T;
}

mod one_based {
    pub impl TwoImpl <
        T, +Copy<T>, +Drop<T>, +Add<T> , impl One: core:num::traits::one<T>,
    > of super::Two<T> {
        fn two() -> T{
            One::one() + One::one()
        }
    }
}

pub impl U8Two = one_based::TwoImpl<u8>;
pub impl u128Two = one_based::TwoImpl<u128>;
