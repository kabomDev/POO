require_relative 'Player'

class Board
  attr_accessor :board
  # on crée le plateau
  def initialize(board)
    @board = board
    (@board = [" "," "," "," "," "," "," "," "," "])
     puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
     puts "----------"
     puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
     puts "----------"
     puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"

  end
# on crée les cases qui correspondent au plateau
  def boardcase 
      @boardcase = ["1","2","3","4","5","6","7","8","9"]
  end
# on crée les conditions de victoires
  def win_condition?(player)
    if (@board[0] && @board[1] && @board[2] = @player1.symbol) ||
        (@board[3] && @board[4] && @board[5] = @player1.symbol) ||
        (@board[6] && @board[7] && @board[8] = @player1.symbol) ||
        (@board[0] && @board[3] && @board[6] = @player1.symbol) ||
        (@board[1] && @board[4] && @board[7] = @player1.symbol) ||
        (@board[2] && @board[5] && @board[8] = @player1.symbol) ||
        (@board[0] && @board[4] && @board[8] = @player1.symbol) ||
        (@board[6] && @board[4] && @board[2] = @player1.symbol)
        puts "#{player1}, vous avez gagné !"
      elsif
        (@board[0] && @board[1] && @board[2] = @player2.symbol) ||
        (@board[3] && @board[4] && @board[5] = @player2.symbol) ||
        (@board[6] && @board[7] && @board[8] = @player2.symbol) ||
        (@board[0] && @board[3] && @board[6] = @player2.symbol) ||
        (@board[1] && @board[4] && @board[7] = @player2.symbol) ||
        (@board[2] && @board[5] && @board[8] = @player2.symbol) ||
        (@board[0] && @board[4] && @board[8] = @player2.symbol) ||
        (@board[6] && @board[4] && @board[2] = @player2.symbol)
        puts "#{player2}, vous avez gagné !"
      end
    end
end
