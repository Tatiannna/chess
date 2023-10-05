require_relative "piece.rb"
require_relative "slideable.rb"


class Bishop < Piece
    include Slideable

    def symbol
        @color == :black ? "\u265D" : "\u2657" 
    end


    private
    def move_dirs
        d_dirs
    end 
end