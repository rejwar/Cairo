fn main() {
    let w1: Wallet<bool , u128> = Wallet {balance: true , address: 10};
    let w2: Wallect<felt252, u8> = Wallet {balance:32 , address:100};

    let w3 = w1.mixup(w2);

    assert!(w3.balance);
    assert!(w3.address==100);
}
