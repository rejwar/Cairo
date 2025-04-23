#[cfg(test)]
mod tests {
    #[test] 
    fn exploration () {
        let result = 2+2 ;
        assert_eq!(result, 4);
    }

    #[test] 
    fn another() {
        let result = 2+2;
        assert_eq!(result == 6, " Make this test fail");
    }
}
