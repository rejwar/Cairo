use aggregator::{Summary , NewsArticle, Tweet};

fn main() {
    let news = NewsArticle {
        headline: String::from("New Study Reveals the Benefits of Meditation"),
        location: String::from("New York, NY"),
        author: "cairo Digger",
        content: String::from("A recent study published in the Journal of Health Psychology has found that regular meditation can lead to significant improvements in mental health and well-being. The study, which followed a group of participants over a six-month period, found that those who practiced meditation regularly reported lower levels of stress and anxiety, as well as improved mood and overall life satisfaction."),
    }; 

    let tweet = Tweet {
        username: String::from("cairo_digger"),
        content: String::from("Just finished a great workout! Feeling strong and ready to take on the day."),
        reply: false,
        retweet: false,
    };

    println!("New article summary: {}", news.summarize());
    println!("New tweet summary: {}", tweet.summarize());
}

