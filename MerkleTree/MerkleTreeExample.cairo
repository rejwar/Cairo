%lang starknet

// লিফ নোডের হ্যাশ ক্যালকুলেট করার ফাংশন
func CalculateLeafHash(leaf_data: felt) -> (hash: felt) {
    // বাস্তবে এখানে SHA-256 বা অন্য কোনো হ্যাশ ফাংশন ব্যবহার করা উচিত
    // উদাহরণের জন্য আমরা সাধারণ ফেল্ট ভ্যালু ব্যবহার করছি
    let hash = leaf_data * 2; // সিমপ্লিফাইড হ্যাশ ফাংশন
    return (hash,);
}

// দুটি চাইল্ড নোডের হ্যাশ কম্বাইন করার ফাংশন
func CombineHashes(hash1: felt, hash2: felt) -> (parent_hash: felt) {
    // বাস্তবে এখানে hash1 + hash2 কে হ্যাশ করা উচিত
    let parent_hash = hash1 + hash2;
    return (parent_hash,);
}

// মার্কেল রুট ক্যালকুলেট করার ফাংশন
@view
func ComputeMerkleRoot(leaf1: felt, leaf2: felt, leaf3: felt, leaf4: felt) -> (root: felt) {
    // স্টেপ ১: প্রতিটি লিফের হ্যাশ বের করুন
    let hash1 = CalculateLeafHash(leaf1);
    let hash2 = CalculateLeafHash(leaf2);
    let hash3 = CalculateLeafHash(leaf3);
    let hash4 = CalculateLeafHash(leaf4);

    // স্টেপ ২: লিফ লেভেলের হ্যাশ কম্বাইন করুন
    let hash12 = CombineHashes(hash1, hash2);
    let hash34 = CombineHashes(hash3, hash4);

    // স্টেপ ৩: রুট হ্যাশ বের করুন
    let root_hash = CombineHashes(hash12, hash34);

    return (root_hash,);
}
