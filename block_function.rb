#Create a program block_function.rb.  
#It should have a function do_calc that calls a block using a yield statement.  
#The yield statement will pass the numbers 7 and 9 to a block, and then will print out the result.  
#Call the do_calc function twice in your program. 
#The first time, pass a block that adds the two numbers. 
#The second time, pass a block that multiplies the two numbers.  
#Your program should print out 16 and 63.

def do_calc() #creating the function that will call the block
    yield 7, 9 #Calling the block using yield and passing in parameters 7 and 9
end

do_calc do |a,b| #calling the do_calc function passing in a block
    puts "#{a} + #{b}: #{a + b}" #adding the numbers
end

do_calc do |a,b|
    puts "#{a} * #{b}: #{a * b}" #multiplying the numbers
end