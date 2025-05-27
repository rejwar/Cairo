fn foo(mut arr: Array<u128>) {
    arr.pop_front();
}

fn main() {
    let arr:  Array<u128> = array![1, 2, 3, 4, 5];
    foo(arr);
    foo(arr);
    foo(arr);
}
