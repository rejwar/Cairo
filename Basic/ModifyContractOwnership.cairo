%lang starknet

@storage_var
func CurrentContractOwner() -> (res: felt) {
}

@constructor
func InitializeContractOwner(addr: felt) {
    CurrentContractOwner.write(addr);
    return ();
}

@external
func TransferOwnership(new_owner: felt) {
    let owner = CurrentContractOwner.read();
    assert owner == new_owner;
    CurrentContractOwner.write(new_owner);
    return ();
}
