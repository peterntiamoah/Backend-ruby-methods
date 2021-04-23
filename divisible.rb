#Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. 
#Then call the method in your program and print out what it returns.  
#Call the program divisible.rb.


def divisible
    final_array = [] #Array where values will be stored
    for item in 1..100 do
        if (item % 2 == 0 || item % 3 == 0 || item % 5 == 0)
            final_array.push(item)
        end
    end
    return final_array
end

puts divisible