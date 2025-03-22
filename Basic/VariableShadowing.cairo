%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin

// Function to demonstrate shadowing
func CalculateTotalPrice{
    syscall_ptr: felt*, 
    pedersen_ptr: HashBuiltin*, 
    range_check_ptr
}(
    price: felt
) -> (totalPrice: felt) {
    // Outside variable
    let price = price * 2;  // Multiplying the parameter by 2
    
    // Create a block scope
    {
        // Inside variable shadows the outside variable
        let price = 100;  // This shadows both the parameter and the previous variable
        // Here, price is 100
    }
    
    // Here, price is back to the value from the outer scope (parameter * 2)
    return (totalPrice=price);
}

@external
func GetDiscountedPrice{
    syscall_ptr: felt*, 
    pedersen_ptr: HashBuiltin*, 
    range_check_ptr
}(
    price: felt
) -> (finalPrice: felt) {
    // Initial variable
    let discount = 10;  // 10% discount
    
    // Calculate discounted price
    let finalPrice = price;
    
    if (price > 50) {
        // Shadowing discount with a higher value
        let discount = 20;  // 20% discount for prices over 50
        let finalPrice = price - (price * discount / 100);
    } else {
        let finalPrice = price - (price * discount / 100);
    }
    
    return (finalPrice=finalPrice);
}
