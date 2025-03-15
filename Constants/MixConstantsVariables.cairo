%lang starknet

// কনস্ট্যান্ট ডিফাইন করা
const DEFAULT_SCORE: felt = 50;

// ভেরিয়েবল ডিফাইন করা
let current_score: felt = DEFAULT_SCORE;

// ফাংশন ডিফাইন করা
@external
func UpdateScore(new_score: felt) {
    current_score = new_score; // Update current score
    return ();
}

@view
func GetScore() -> (res: felt) {
    let res = current_score; // Return current score
    return (res,);
}
