func ReturnFive() -> (Res:felt):
return(5)
end

func Main() ->():
let (X) = ReturnFive() 
assert X=5
return() 
end
