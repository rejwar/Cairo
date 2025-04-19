%lang starknet
struct VariableData {
    Value: felt,
}
fn VariableExample() {
    let InitialValue: felt = 10;
    let mut MutableValue: felt = 20;

    assert InitialValue ==10;
    assert MutableValue ==20;

    MutableValue =30;

    assert MutableValue==30;

    let DataInstance = VariableData{Value:MutableValue};

    assert DataInstance.Value == 30;
}
