fn main() {
    let rectangle = (30, 10);
    let area = area(rectangle);
    println!("Area is {}", area);
}

fn area( dimesion: (u64 , u64)) -> u64{
    let(x,y) = dimesion;
    x*y
}
