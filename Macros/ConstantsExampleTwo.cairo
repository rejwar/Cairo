// File: ConstantsExampleTwo.cairo

// ২ এর চতুর্থ ঘাত (2^4)
const TWO_TO_THE_POWER_OF_FOUR: felt252 = consteval_int!(2 * 2 * 2 * 2); // ফলাফল: 16

// অথবা যদি `pow` ফাংশন বা সিনট্যাক্স consteval এ সমর্থিত হয়
// const TWO_TO_THE_POWER_OF_FOUR_SYNTAX: felt252 = consteval_int!(pow(2, 4)); // এটি কাল্পনিক সিনট্যাক্স

fn main() {
    // ...
}
