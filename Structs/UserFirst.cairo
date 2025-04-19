struct User {
    id: felt,
    name:felt,
    balance:felt
}

@view
func get_user() -> (user: User) {
    let user: User = User (id=1 , name = 100 , balance=500)
    return (user)
}
