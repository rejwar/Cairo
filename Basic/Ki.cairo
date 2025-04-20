use debug::PrintTrait;

fn main() {
    let mt_felt252 = 256;
    let my_u8: u8 = my_felt252.try_into().unwrap();

    my_u8.print();
}
