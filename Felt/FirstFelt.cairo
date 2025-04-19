//exercise 

let x:felt = 42;

let sum:felt = 5+10;
let diff:felt = 20-7;
let product:feltn = 6*3;

let remainder:felt= 15%4;

func square(num:felt ) -> (result:felt) {
    return (num * num) ;
}

let pair: (felt,felt) = (10,290);
let (a,b) = pair;

@storage_var
func balances(user:felt) -> (amount: felt) {
}


let bitwise_and:felt = x&y;

let sum:felt = 0;

let i: felt =0;

while(i<10) {
    sum+ = i;
    i+=1;
}
