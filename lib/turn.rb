def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index input
  input = input.to_i - 1


end

def position_taken? board, index
  if board[index] != "X" and "O"
    return false
  else
    return true
  end
end

def valid_move? board, index
  if !index.to_i.between?(0,8)
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end
end

def move board, index, type = "X"
  board[index] = type

end

def turn board, index, type
  input_to_index(index)
    move(board, index, type)
end
