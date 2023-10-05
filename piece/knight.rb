require_relative "piece.rb"
require_relative "stepable.rb"

class Knight < Piece
    include Stepable
    def symbol
        @color == :black ? "\u265E" : "\u2658"
    end

protected
    def move_dirs
        [[1,2],[1,-2],[-1,2],[-1,-2],[2,1],[2,-1],[-2,-1],[-2,1]]
    end


end