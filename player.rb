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
