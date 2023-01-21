print("Enter numbers: ")
try 
    x = parse(Float64, readline());
    y = parse(Float64, readline());
    if (y >= (x+1)*(x+1)) && (y*y + (x+1)*(x+1) <= 1)
        println("The point belongs to the shaded area.")
    else
        println("The point doesn't belong to the shaded area.")
    end
catch per
    println("Incorrect date.")
end

