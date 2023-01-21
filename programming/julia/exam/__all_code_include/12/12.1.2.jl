print("Enter k: ")
try
    k = parse(Float64, readline());
    print("Enter x: ")
    x = parse(BigFloat, readline()); 
    global p
    p = 0
    for i in 1:k    
        argument = x^i
        current = sin(argument)
        if current < 0 
            global p
            p = 1
        end
    end

    if p == 1
        println("True")
    else
        println("False")
    end
catch per
    println("Incorrect date.")
end