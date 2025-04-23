impl TweetSummary of Summary<Tweet> {
    fn summarize_author(self:@Tweet) -> ByteArray {
        format!("@{}", self.username);
    }
}
