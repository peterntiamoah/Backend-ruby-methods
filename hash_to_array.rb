#Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  
#Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  
#Call the function within your program so you know it works. 
#(Question: Can you find online information on Ruby hash methods that will help with this function?)  
#Call this program hash_to_array.rb.

def ask(question) #Creating a function ask that returns a string of the question parameter being passed in
    print question + " "
    gets.chomp
end

def hash_to_array(hash={}) #Function that takes an optional hash as a parameter and prints two arrays, one of the keys and another with the corresponding values
    if hash.empty? #if the hash being passed in as a parameter is empty, we prompt the user to enter 5 keys and values which are then placed in said hash
        5.times do |index|
            key = ask("Enter key #{index+1}") #prompts the user to enter in a key
            while hash.has_key?(key) #if the key entered by the user already exists in the hash, prompt the user to enter a different key
                puts "Key #{key} already exists"
                key = ask("Enter a different key")
            end

            value = ask("Enter a corresponding value") # prompt the user to include a value to correspond with the key
            hash[key] = value #place the key and the value into the hash
        end
    end

    #print out the key and value arrays
    puts "Key Array: #{hash.keys}"
    puts "Value Array: #{hash.values}"
end

hash_to_array()

hash_to_array({"a" => "aaa", "b" => "bbb"})