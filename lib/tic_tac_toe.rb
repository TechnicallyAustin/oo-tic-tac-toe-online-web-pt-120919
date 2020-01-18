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
  if position_taken?(index) == false && index < 9 
    true 
  else 
    false 
  end 
  
end

def turn(moves, player = "X")
  puts "Pick an area 1 - 9"
  selected = input_to_index(moves)
  if position_taken?(selected) == false 
    @board[selected] = player
    @board
  else
    while position_taken?(selected) == true 
    puts "Area is currently taken."
    @board 
    puts "Pick an area 1 - 9"
    selected
  end
end
end

def turn_count
  x_arr = @board.select { |i| i == "X"}
  o_arr = @board.select { |i| i == "O"}
  new_arr = x_arr + o_arr
  new_arr.length 
end

def current_player
  if turn_count % 2 == 0 
    #does the return value of turn_count have more X's than O's 
    #if true its the turn of whoever has less turns taken .
    
end

def won?
end

def full?
end

def draw?
end

def over?
end

def winner 
end

def play 
end

    
end