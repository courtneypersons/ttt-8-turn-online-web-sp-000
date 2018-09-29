board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
user_input.to_i - 1
end

def valid_move?(board, index)
  def valid_move?(board, index)
    if index.between?(1,9)
      if !position_taken?(board, index)
        true
      end
    end
    index.between?(0,8) && !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board [index] == nil)
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end

def move(board, index, current_player)
board[index] = current_player
end
#   def position_taken?(array, ind)
#     if array[ind] == " " || array[ind] == "" || array[ind] == nil
#       return false
#     else
#       return true
#     end
#   end
#
#   def on_board?(num)
#     if num.between?(0, 8) == true
#       return true
#     else
#       return false
#     end
#   end
#
#   if (position_taken?(board, index)) == false && (on_board?(index) == true)
#     return true
#   else
#     return false
#   end
# end
#
# def move(board, position,character = "X")
# board[position] = character
# end
#
# def turn(board)
#   puts "Please enter 1-9:"
#    user_input = gets.chomp
#    index = input_to_index(user_input)
#    if valid_move?(board, index) == true
#     move(board, index)
#     display_board(board)
#   else
#     turn(board)
#   end
# end
