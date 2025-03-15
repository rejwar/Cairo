%lang starknet

// একটি সাধারণ ফাংশন
func MultiplyNumbers(a: felt, b: felt) -> (res: felt) {
    let res = a * b;
    return (res,);
}

// রিকার্সিভ ফাংশন
func CalculateFactorial(n: felt) -> (res: felt) {
    if (n == 0) {
        return (1,);
    }
    let res = n * CalculateFactorial(n - 1);
    return (res,);
}

// ভয়েড ফাংশন
func PrintMessage() {
    // কোনো রিটার্ন ভ্যালু নেই
    return ();
}
