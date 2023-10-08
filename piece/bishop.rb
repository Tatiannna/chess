require_relative "piece.rb"
require_relative "slideable.rb"


class Bishop < Piece
    include Slideable

    def symbol
        @color == :black ? "♗"  : "♝" 
    end


    private
    def move_dirs
        d_dirs
    end 
end