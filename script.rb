class Game
  def initialize(player1_name, player2_name)
    @player1_name = player1_name
    @player2_name = player2_name
  end

  attr_accessor :player1_name, :player2_name

  def display(board)
    puts "
        #{board[0]} | #{board[1]} | #{board[2]}
        ---+---+---
        #{board[3]} | #{board[4]} | #{board[5]}
        ---+---+---
        #{board[6]} | #{board[7]} | #{board[8]} "
  end
end

puts 'What is your name?'
player1_name = gets.chomp
puts "What is your rival's name?"
player2_name = gets.chomp
new_game = Game.new(player1_name, player2_name)

board = Array.new(9, '-')

board.each_with_index do |_v, i|
  board[i] = i + 1
end

new_game.display(board)

board.each_with_index do |_v, i|
  board[i] = '-'
end

puts "Where would you like to place #{player1_name}?"
input1 = gets.chomp
board[input1.to_i - 1] = 'X'

new_game.display(board)

puts "Where would you like to place #{player2_name}?"
input2 = gets.chomp
board[input2.to_i - 1] = 'O'

new_game.display(board)
