#[derive(Drop)]
pub struct NewsArtcle {
    pub headline : ByteArray,
    pub location: ByteArray,
    pub author: ByteArray,
    pub content: ByteArray,
}

impl NewsArtcleSummary of Summary<NewsArtcle> {
    fn summarize(self: @NewsArtcle) -> ByteArray {
        format!("{} by {} ({})" , self.headline , self.author, self.location)
    }
    }

    #[derive(Drop)]
    pub struct NewsArtcleSummary {
        pub headline : ByteArray,
        pub location: ByteArray,
        pub author: ByteArray,
    }
    impl NewsArtcleSummary of Summary<NewsArtcle> {
        fn summarize(self: @NewsArtcle) -> ByteArray {
            format!("{} by {} ({})" , self.headline , self.author, self.location)
        }
    }
    #[derive(Drop)]
    pub struct NewsArtcle {
        pub headline : ByteArray,
        pub location: ByteArray,
        pub author: ByteArray,
        pub content: ByteArray,
    }
    impl NewsArtcleSummary of Summary<NewsArtcle> {
        fn summarize(self: @NewsArtcle) -> ByteArray {
            format!("{} by {} ({})" , self.headline , self.author, self.location)
        }
    }
    #[derive(Drop)]
    pub struct NewsArtcleSummary {
        pub headline : ByteArray,
        pub location: ByteArray,
        pub author: ByteArray,
    }
}
