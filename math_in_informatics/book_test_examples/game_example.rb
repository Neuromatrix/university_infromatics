name = gets()

query_number = rand(100)
user_answer = -1;
attempts = 10
while user_answer != query_number && attempts > 0
    user_answer = gets().to_i
    if user_answer<query_number
        puts("low")
    elsif user_answer>query_number
        puts("high")
    else
        puts("Nice #{name}")
        break
    end
    attempts-=1
end
