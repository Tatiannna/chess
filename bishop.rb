require_relative "piece.rb"
require_relative "slideable.rb"


class Bishop < Piece
    include Slideable

    def initialize
        @symbol = @color == 'black' ? "\u265D" : "\u2657" 
    end


    private
    def move_dirs
        new_positions = []
        # @DIAGNAL_DIRS = [[1,1], [-1,1], [-1, -1], [1, -1]]

        row, col = @pos 

        DIAGNAL_DIRS.each do |delta|
            dx, dy = delta
            new_positions << row + delta, col + delta
        end

        new_positions
    end 
end