%lang starknet

// স্টোরেজ ভেরিয়েবল
@storage_var
func TotalSupply() -> (res: felt) {
}

// ভিউ ফাংশন
@view
func GetTotalSupply() -> (res: felt) {
    let res = TotalSupply.read();
    return (res,);
}
