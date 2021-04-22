#Write a program hangman.rb that contains a function called hangman.  
#The function's parameters are a word and an array of letters.  
#It returns a string showing the letters that have been guessed.  
#Call the function from within your program so that you know that it works.

def hangman(word, letters) #method creation: takes two parameters as directed
    hangman = ''  #string that will be returned at the end...will show the letters that have been guessed and an "_" for all unguessed characters
    word.each_char do |char|    #iterating through the word string one character at a time
        hangman += (letters.include? char) ? char : "_"  #if the letter array contains the character currently being iterated over then it is appended to the hangman string otherwise a "_" character is pushed on instead
    end  
    puts hangman #print out the final string
end

#test cases
puts hangman("bob", ["b"])
puts hangman("alphabet", ["a", "h"])
