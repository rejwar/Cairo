trait UserDataBaseTrait <T> {
fn New() -> UserDataBase<T>;

fn UpdateUser<+Drop <T>>(ref self: UserDataBase<T> Name: felt252 , 
    ref self: UserDataBase<T> Age: felt252 , 
    ref self: UserDataBase<T> Email: felt252 , 
    ref self: UserDataBase<T> Phone: felt252 , 
    ref self: UserDataBase<T> Address: felt252 , 
    ref self: UserDataBase<T> City: felt252 , 
    ref self: UserDataBase<T> State: felt252 , 
    ref self: UserDataBase<T> ZipCode: felt252 , 
    ref self: UserDataBase<T> Country: felt252) -> (res : felt252);

}
