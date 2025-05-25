// File: ConstantsExampleOne.cairo

// একটি সাধারণ যোগফল
const SUM_OF_TWO_NUMBERS: felt252 = consteval_int!(100 + 250); // ফলাফল: 350

// গুণ এবং যোগের সমন্বয়
const COMPLEX_CALCULATION: felt252 = consteval_int!(10 * 5 + 7); // ফলাফল: 50 + 7 = 57

// একটি দিনের মোট সেকেন্ড সংখ্যা
const SECONDS_IN_A_DAY: felt252 = consteval_int!(24 * 60 * 60); // ফলাফল: 86400

fn main() {
    // এই ধ্রুবকগুলো এখানে ব্যবহার করা যেতে পারে
    // যেমন, প্রিন্ট করা বা অন্য গণনার জন্য
    // (কায়রোর কোর লাইব্রেরিতে সরাসরি প্রিন্ট করার ফাংশন ভিন্ন হতে পারে,
    // এটি ধারণাগত উদাহরণ)
}
