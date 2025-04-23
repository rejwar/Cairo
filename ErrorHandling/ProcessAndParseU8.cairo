fn do_something_with_parse_u8 (input :felt252) -> felt252 {
    // This function does something with the input
    // For example, it could just return the input
    let input_to_u8 = parse_u8(input)?;
    let res = input_to_u8 -1 ;
    Ok (res)
}
