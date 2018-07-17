class Board
  attr_accessor :board
  def initialize(board)
    @board = board
    (@board = [" "," "," "," "," "," "," "," "," "])
     puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
     puts "----------"
     puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
     puts "----------"
     puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"

  end

  def boardcase
      @boardcase = ["1","2","3","4","5","6","7","8","9"]
  end
  def win_condition
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
#=====================================================================#
class Player
  attr_accessor :player, :symbol

  def initialize(player1, player2)
    @player = player
    @player1 = Player.new(player1)
    @player1.symbol = "x".upcase
    @player2 = Player.new(player2)
    @player2.symbol = "o".upcase
  end

end
#=====================================================================#
def player_play(board)
  count = 0
  index = 0
  puts "#{@player1}, Choisissez une case entre 1 et 9"
  @choice = gets.chomp.to_s
  if @player1.win_condition? == false
      @boardcase.each do |n|
        if @choice == n  && @grille[index] == " "
          @grille.push(@choice)
        end
      end
  end
    count += 1
  else
    puts "#{@player1}, Choisissez une case entre 1 et 9"
    @choice = gets.chomp.to_s
    if @player1.win_condition? == false
        @boardcase.each do |n|
          if @choice == n  && @grille[index] == " "
            @grille.push(@choice)
          end
        end
      count -= 1
    end
end
#=====================================================================#


def start_game

  puts "================================"
  puts "=====LE JEU DU TIC TAC TOE======"
  puts "================================"

  puts "Entrez le nom du player 1"
  name1 = gets.chomp.to_s.capitalize
  @player1 = name1
  puts "Entrez le nom du player 2"
  name2 = gets.chomp.to_s.capitalize
  @player2 = name2
  puts "le player 1 est: #{@player1}"
  puts "le player 2 est: #{@player2}"
  puts "==================================="
  puts "==================================="
  @grille = Board.new(@grille)
  player_play(@grille)

end
start_game
