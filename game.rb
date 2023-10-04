require_relative "board.rb"
require_relative "player.rb"

class Game
    def initialize
        @board = Board.new
        @display = Display.new
        @player_1 = Player.new
        @player_2 = Player.new
        @current_player = @player_1
    end

    def play
    end

    private
    
    def notify_players
    end

    def swap_turn!
        @current_player = @current_player == @player_1 ? @player_2 : @player_1
    end

end