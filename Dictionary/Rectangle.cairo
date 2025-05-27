#[derive(Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

fn main () {
    let mut rec = Rectangle {height: 3, width: 10};
    let first_snapshots = @rec;
    rec.height = 5;
    let first_area = calculate_area(first_snapshots);
    let second_area = calculate_area(@rec);
    println!("First area: {}", first_area);
    println!("Second area: {}", second_area);
}

fn calculate_area(rect: @Rectangle) -> u64 {
    *rect.width * *rect.height
}
