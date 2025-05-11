use cairo_course_exercises::cairo_crash_course::ownership::ownership_4::ownership_exercise_4::{multiply_elements};

#[test]
fn test_multiplication() {
    // TODO: Declare an array with the numbers 1 to 9
    let mut numbers = array![1, 2, 3, 4, 5, 6, 7, 8, 9];

    // TODO: Create a snapshot of the array and append 10 to the original array
    let my_snapshot = @numbers;
    numbers.append(10);

    // TODO: Check the multiplication of the elements and make sure the value is correct
    // Expected result of product from 1 to 9 is 362880

    let product = multiply_elements(my_snapshot);
    // Check the product of the elements in the snapshot
    assert_eq!(product, 362880);
    //

    
}

