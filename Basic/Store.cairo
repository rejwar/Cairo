%lang starknet

@storage_var
func MyData() -> (res: felt) {
}

@external
func SetData(val: felt) {
    MyData.write(val);
    return ();
}

@view
func GetData() -> (res: felt) {
    let res = MyData.read();
    return (res,);
}
