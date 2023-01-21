function main_while()
    println("Введите номер цифры ряда.")
    target_digit = parse(Int32, readline())
    cur_digit = 1
    n = 1
    while cur_digit <= target_digit
        number = 2 ^ n
        d = digit_count(number)
        if target_digit - d <= 0
            println(get_digit(number, target_digit))
            break
        end
        target_digit -= d
        n += 1
    end
end

function main_for()
    println("Введите номер цифры ряда.")
    target_digit = parse(Int32, readline())
    n = 1
    cur_deg = 2 ^ n
    elapsed = digit_count(cur_deg)
    for i=1:target_digit
        if elapsed == 0
            n += 1
            cur_deg = 2 ^ n
            elapsed = digit_count(cur_deg)
        end
        if elapsed > 0
            elapsed -= 1
        end
    end
    println(get_digit(cur_deg, digit_count(cur_deg) - elapsed))
end

function digit_count(number)
    count = 0
    while number > 0
        number = div(number, 10)
        count += 1
    end
    return count
end

function get_digit(number, idx)
    cur = digit_count(number)
    while number > 0
        if cur == idx
            return number % 10 
        end
        number = div(number, 10)
        cur -= 1
    end
end

main_for()
main_while()
