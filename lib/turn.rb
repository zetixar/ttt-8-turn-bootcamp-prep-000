def turn board
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index input
  # 
  if valid_move?(board, index)
    puts "salam"
    move(board, index, "X")
    display_board board
  else
    puts "bbb"
    puts "Invalid Input"
    turn(board)
  end
end

def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character="X")
  board[index] = character
end

def input_to_index user_input
  user_input.to_i - 1
end

def valid_move? board, index
  if position_taken?(board, index) || !index.between?(0, 8)
    return false
  end
  true
end

def position_taken? board, index
  board[index] == " " || board[index] == "" || board[index] == nil ? false : true
end