sub trait Eat{
    fn eat_food(self:@person);
}

impl PersonEatingHabbits of Eat  {

    fn eat_food(self:@Perosn){
        println!("{} eat food.self.name");
    }
    
}

#[derive(Drop)]
pub struct Perosn {

    name: ByteArray ,
}

fn main() {
    let person  = Perosn{
        name: "fajdsjadsf";

    };
    person.eat_food();
}
