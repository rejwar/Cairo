//Negative impls in cairo 

// This is a simple Cairo program that demonstrates the use of negative impls
// to implement a trait for a struct.
// It defines a trait `Hello` with a method `say_hello`, and implements it for
// a struct `Person`. The program then creates an instance of `Person` and

#[derive(Drop)]
struct ProducerType{
    name: String,
    age: u32,   
    
}
