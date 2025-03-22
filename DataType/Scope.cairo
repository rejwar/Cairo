fn main() {
    let y=5;

    {
        let z =15;
        println!( "innder scope y ={ }" ,y );
        println!(" inner scope x ={ }",z);
    }
    println! ("bairer scope y ={ }",y);
}
