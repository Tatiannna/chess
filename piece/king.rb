require_relative "piece.rb"
require_relative "stepable.rb"

class King < Piece
    include Stepable
    def symbol
        @color == :black ? "\u265A" : "\u2654"
    end

 protected
    def move_dirs
        [[0,1],[1,1],[1,0],[0,-1],[1,-1],[-1,1],[-1,-1],[-1,0]]
    end
end