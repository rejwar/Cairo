func test_shadowing(x: felt) -> (result: felt){
    let y =10;
    let y = y+x;
    let y = y*2;

    return (result = y);
}
