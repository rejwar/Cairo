%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin

// Contract state variable
@storage_var
func Balance() -> (value: felt) {
}

@external
func DepositFunds{
    syscall_ptr: felt*, 
    pedersen_ptr: HashBuiltin*, 
    range_check_ptr
}(
    amount: felt
) {
    // Read current balance
    let (balance) = Balance.read();
    
    // Local variable shadows the function name
    let Balance = balance + amount;
    
    // Writing back to storage
    Balance.write(Balance);  // Using the variable name that shadows the function
    
    return ();
}

@view
func GetBalance{
    syscall_ptr: felt*, 
    pedersen_ptr: HashBuiltin*, 
    range_check_ptr
}() -> (balance: felt) {
    let (balance) = Balance.read();
    return (balance=balance);
}
