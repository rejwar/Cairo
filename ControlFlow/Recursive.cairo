fn main() -> felt252{
    recursive_function(0)
}

fn recursive_function(n: felt252) -> felt252 {
    if n == 10 {
        return n;
    }
    return recursive_function(n + 1);
}
