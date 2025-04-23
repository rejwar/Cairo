use aggregator::{Summary, NewsArticle,};

fn main() {
    let news = NewsArticle {
        headline: String::from("Breaking News"),
        location: String::from("New York"),
        author : String::from("John Doe"),
        content: String::from("A major event has occurred in New York."),
};

println!("New article: {}", news.summarize());
}
