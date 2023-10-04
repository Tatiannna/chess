require_relative "piece.rb"
require_relative "slideable.rb"


class Rook < Piece
    include Slideable
    def symbol
        color == :black? "\u265C" : "\u2656"
    end
private
    def move_dirs
        [[0,1],[0,-1],[1,0],[-1,0]]
    end
end

# start_pos [2,3] =>[2,4][2,1]
