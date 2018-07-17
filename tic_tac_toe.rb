require_relative 'Board'
require_relative 'Player'

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

    if @player2.win_condition? == false
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
