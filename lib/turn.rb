# Tic Tac Toe turn

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

#  #position_taken method needed first to use in #valid_move
# if player's position_taken returns false
# cell IS NOT taken, IS AVAILABLE

def position_taken? (board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board,index)
     true
   end
end
# valid_move?(board, 2)

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
      if valid_move?(board,index)
        move(board, index)
        display_board(board)
      elsif !valid_move?(board,index)
        turn(board)
      end
end
