require_relative "piece.rb"
require_relative "stepable.rb"

class Knight < Piece
    include Stepable
    def symbol
        @color == :black ? "♘" : "♞"
    end

protected
    def move_dirs
        [[1,2],[1,-2],[-1,2],[-1,-2],[2,1],[2,-1],[-2,-1],[-2,1]]
    end


end