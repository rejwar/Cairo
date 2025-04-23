use aggregator::{Summary, Tweet};

fn main() {
    let tweet = Tweet {
        username: "EliBenSasson",
        content: "Hello, world!",
        reply: false,
        retweet: false,
    };
    println!(" 1 new tweet {}", tweet.summarize());
}
// The `main` function is the entry point of the program.
// It creates a new `Tweet` instance and prints its summary using the `summarize` method.
// The `Tweet` struct is defined in the `aggregator` module, which is imported at the beginning of the file.
