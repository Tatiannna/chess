require_relative "piece.rb"
require_relative "slideable.rb"


class Rook < Piece
    include Slideable
    
    def symbol
        color = black? '♖' : '♜'
    end

    def move_dirs
        h_dirs
    end
end