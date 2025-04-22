#[derive(Drop)]
struct User {
    active:bool ,
    email:ByteArray,
    sign_in_count:u64,
}

fn main() {
    let user1 = User{
        active : true, username: "rejwar" , email: "rejwar@gmail.com", sign_in_count:1,
    };
    let user2 = User {
        sign_in_count: 1 , username:"rejwar" , active: true, email: "rejwar1010@gmail.com",
    };
}
