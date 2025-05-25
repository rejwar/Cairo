// File: ConfigConstants.cairo

// একটি গেমে সর্বোচ্চ প্লেয়ার সংখ্যা
const MAX_PLAYERS: felt252 = consteval_int!(4);

// কোনো অপারেশনের জন্য সর্বোচ্চ অ্যাটেম্পট সংখ্যা
const MAX_ATTEMPTS: felt252 = consteval_int!(3);

// একটি বিশেষ কাজের জন্য গ্যাস লিমিট (উদাহরণ মাত্র)
const GAS_LIMIT_FOR_SPECIAL_TASK: felt252 = consteval_int!(100000 + 50000); // ফলাফল: 150000

use super::{MAX_PLAYERS, MAX_ATTEMPTS};

fn join_game(current_players: felt252) {
    assert(current_players < MAX_PLAYERS, 'Max players reached');
    // ... খেলার লজিক
}

fn perform_task(attempts_made: felt252) {
    assert(attempts_made < MAX_ATTEMPTS, 'Max attempts exceeded');
    // ... টাস্কের লজি
}
