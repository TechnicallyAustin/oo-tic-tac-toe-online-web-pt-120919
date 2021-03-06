require 'pry'
class TicTacToe
  
  WIN_COMBINATIONS = [
  #Row WIN_COMBINATIONS
  [0,1,2],
  [3,4,5],
  [6,7,8],
  #Column WIN_COMBINATIONS
  [0,3,6],
  [1,4,7],
  [2,5,8],
  #Diag WIN_COMBINATIONS
  [0,4,8],
  [6,4,2]
  ]
    
  def initialize(board = nil)
  @board = board || Array.new(9, " ")
  end

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "

    end
def input_to_index(number)
  new_num = number.to_i
  next_num = new_num - 1
  next_num
  #binding.pry
end

def move(index, token = "X")
  @board[index] = token 
end

def position_taken?(index)
 !(@board[index].nil? || @board[index] == " ")
  #binding.pry 

end

def valid_move?(index)
  if !position_taken?(index) && index.between?(0,8)
true
end
  
end


def turn_count
  board_arr = @board.select { |i| i == "X" || i == "O" }
  board_arr.length
end

def current_player
  if turn_count % 2 == 0 
    player = "X"
    player 
  else
    player = "O"
    player 
end
end

def turn
  puts "Pick an area 1 - 9"
  input = gets.chomp
  board_pos = input_to_index(input)
  if valid_move?(board_pos)
  player_symbol = current_player
  move(board_pos, player_symbol)
  display_board
else
  turn
end

end
  


def won?
  WIN_COMBINATIONS.detect do |win_combo|
    if (@board[win_combo[0]]) == "X" && (@board[win_combo[1]]) == "X" && (@board[win_combo[2]]) == "X"
      return win_combo
      
    elsif (@board[win_combo[0]]) == "O" && (@board[win_combo[1]]) == "O" && (@board[win_combo[2]]) == "O"
      return win_combo
      
    end
      false
  end
end
   
  
 

def full?
 if @board.include?(" ")
   false
 else
   true
   
 end
 end

def draw?
  if full? && !won?
      true
    elsif !full? && !won?
    false
  else won?
    false
  end
    
end

def over?
  if full? || won? || draw?
    true
  end
end

def winner
  WIN_COMBINATIONS.each do |combo|
    if @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
      return "X"
    elsif 
    @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
    return "O"
end
end
nil
end

def play
  until over? == true
  if !draw?
    turn
  end
end

  if won?
  puts "Congratulations #{winner}!"
elsif draw?
puts  "Cat's Game!"
end
end

end