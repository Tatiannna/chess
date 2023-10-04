require_relative "piece.rb"
require_relative "slideable.rb"

class Queen < Piece
    include Slideable

    def move_dirs
        new_positions = []
        # @DIAGNAL_DIRS = [[1,1], [-1,1], [-1, -1], [1, -1]]
        # @HORIZONTAL_DIRS = [ [0, 1], [0, -1], [1, 0], [-1, 0]] # includes vertical!

        row, col = @pos 

        @DIAGNAL_DIRS.each do |delta|
            dx, dy = delta
            new_positions << row + delta, col + delta
        end

        @HORIZONTAL_DIRS.each do |delta|
            dx, dy = delta
            new_positions << row + delta, col + delta
        end

        new_positions
    end

    
end