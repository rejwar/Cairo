#[derive (Copy, Drop)] 
struct  Point  {

    x:u128,
    y:u128
}

fn main() {
    let p1 = Point { x: 10, y: 20 };
    // Use the point as needed
    // The Drop trait will automatically be called when `p` goes out of scope
    foo(p1);
    foo(p1);
}


fn foo(p: Point) {
    // Do something with the point
    println!("Point coordinates: ({}, {})", p.x, p.y);
}
