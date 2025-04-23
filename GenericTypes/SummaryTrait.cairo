pub trait Summary<T> {
    fn summarize(
        self: @T,
    ) -> ByteArray {
        format! ("(Read more from {}....)"), Self::summarize_author(self))
    }

    fn summarize_author(self: @T) -> ByteArray;
}
