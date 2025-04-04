@external
func transfer(receiver: felt, amount: felt) {
    let sender_balance = user_balance.read(caller)
    assert sender_balance >= amount
    user_balance.write(caller, sender_balance - amount)
    user_balance.write(receiver, user_balance.read(receiver) + amount)
}
