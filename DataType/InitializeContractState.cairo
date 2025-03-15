%lang starknet

// স্টোরেজ ভেরিয়েবল
@storage_var
func ContractOwner() -> (res: felt) {
}

// কনস্ট্রাক্টর
@constructor
func SetContractOwner(owner: felt) {
    ContractOwner.write(owner);
    return ();
}

// ভিউ ফাংশন
@view
func GetContractOwner() -> (res: felt) {
    let res = ContractOwner.read();
    return (res,);
}
