#[derive(Drop)]
struct  User  
{
    active :bool ,
    username: ByteArray,
    email: ByteArray,
    sign_in_count: u64,
}

fn main() {
    let user1 = User {
        active: true , username: " Rejwar" , email: " Rejwar@gmail.com" , sign_in_count: 1,
    };
    let user2 = User {
        sign_in_count:1 ,  active: true, username: " Rejwar" , email:  "KREI "
    };
}
