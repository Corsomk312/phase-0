# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:Input a an array of arrays (board) including random numbers. Call a random bingo number and letter. If the number generated is within your board, replace that number with an x. Display a single column of the board. Display the whole board. 

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Randomly Generate a letter from the above selections and a random number from 1-100. 



# Check the called column for the number called.
  #Check for which column it is in, and then check the number against that column's contents.

# If the number is in the column, replace with an 'x'
  #When you determine the number is in the column, then find out where it is and replace it's contents with 'x'

# Display a column to the console
  #Display inputted column to the console.

# Display the board to the console (prettily)
  #Go through and print each line of the board on it's own line.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board

    @check_board = {
      "B" => @bingo_board[0],
      "I" => @bingo_board[1],
      "N" => @bingo_board[2],
      "G" => @bingo_board[3],
      "O" => @bingo_board[4]
    }
  end

  def call
    @letter = ["B", 'I', 'N', 'G', 'O'].sample
    @number = rand(100)
  end 

  def check
    
    if @check_board[@letter].include?(@number)
      place = @check_board[@letter].find_index(@number)
      @check_board[@letter][place] = "X"
    else 
      return @check_board
    end

    # if @letter == "B"
    #   if @bingo_board[0].include?(@number)
    #     place = @bingo_board[0].find_index(@number)
    #     @bingo_board[0][place] = "X"
    #   else 
    #     return @bingo_board
    #   end
    # elsif @letter == "I"
    #   if @bingo_board[1].include?(@number)
    #     place = @bingo_board[1].find_index(@number)
    #     @bingo_board[1][place] = "X"
    #   else 
    #     return @bingo_board
    #   end
    # elsif @letter == "N"
    #   if @bingo_board[2].include?(@number)
    #     place = @bingo_board[2].find_index(@number)
    #     @bingo_board[2][place] = "X"
    #   else 
    #     return @bingo_board
    #   end
    # elsif @letter == "G"
    #   if @bingo_board[3].include?(@number)
    #     place = @bingo_board[3].find_index(@number)
    #     @bingo_board[3][place] = "X"
    #   else 
    #     return @bingo_board
    #   end
    # elsif @letter == "O"
    #   if @bingo_board[4].include?(@number)
    #     place = @bingo_board[4].find_index(@number)
    #     @bingo_board[4][place] = "X"
    #   else 
    #     return @bingo_board
    #   end
    # else
    #   return @bingo_board
    # end
  end

  def column(letter)
    puts "Column #{letter} is looking good!"
    puts @check_board[letter]
  end

  def print_board
    puts "What's left? Let's check the board!"
    @check_board.each {|a| puts "#{a}"}
  end

end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.print_board

# Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# I felt like that concepts behind this challenge weren't that difficult, so the pseudocoding wasn't the difficult part for me. I feel like my pseudocoding might still be a little too vague. I'm never sure about the details of what I want to do until I'm in it and doing it.

# What are the benefits of using a class for this challenge?

# Class variables definitely help to make this work. It also would have been a big pain to try and keep track of the board and everything else within 1 method. The class lets you break down everything into smaller, more manageable methods and allows you to keep better track of what is and isn't working in small increments. 

# How can you access coordinates in a nested array?

# You can use whatever methods are applicable for the information that's been nested. I used the .find_index to find exactly where the number was. 

# What methods did you use to access and modify the array?

# I used .include to check the columns, and find_index for figuring out where to replace the right element. 

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I was looking at .fetch, to try and use that to find and then replace the variable, but it seemed a little unnecessary to me to do that. Fetch grabs the value at the key that you give it. I was also looking at .replace to try and replace the variable as well, but they didn't seem to make my code any more readable or dry.

# How did you determine what should be an instance variable versus a local variable?

# I thought about if I would need to access that variable again through another method in the class. If it turned out I was wrong, I would have been able to change it, but definitely thought about and decided whether I was going to use it again or not.

# What do you feel is most improved in your refactored solution?

#   Definitely the check method. In my original solution I was working solely with the array, but when refactoring I decided to move it into a hash right off the bat. This simplified everything for me. I couldn't figure out how to go through the arrays and get the letter to match the column without spelling everything out. It just felt wrong and like cheating doing it that way, so I thought about how I could assign a letter to each array. 