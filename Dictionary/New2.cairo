#[derive(Drop)]
struct A {} 
fn main () {
    let a1 =  gives_ownership();

    let a2 = A {};
    
    let a3 = takes_and_gives_back(a2); // Create an instance of A, which will be dropped at the end of the scope.

    // The `a` variable goes out of scope here, and the `Drop` trait will be called. 

}

fn gives_ownership() -> A {
    // Returns an instance of A, which will be dropped at the end of the scope.

    let some_a = A {};
    some_a
}


fn takes_and_gives_back(a: A) -> A {
    a // Takes ownership of `a` and returns it, which will be dropped at the end of the scope.
}

