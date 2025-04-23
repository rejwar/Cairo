fn LargestList<T>(l1: Array<T> , l2: Array<T>) -> Array<T> {
    if l1.len() > l2.len() {
        l1
    } else {
        l2
    }
}

fn main() {
    let mut l1 = array![1,2];
    let mut l2 = array![3,4,5];

    let l3 = LargestList(l1,l2);
}
