fn main () {
    let arr1: Array<u128> = array![1, 2, 3];

    let (arr2 , len) = calulate_length(arr1);
}

fn calulate_length(arr: Array<u128>) -> (Array<u128>, u32) {
    let len = arr.len();
    (arr, len)
}
