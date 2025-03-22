%lang starknet

struct Point{
    x : felt;
    y : felt;
}

let p = Point {x:1 , y:2}

let x_coord: felt= p.x;
