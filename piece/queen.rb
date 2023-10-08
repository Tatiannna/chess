require_relative "piece.rb"
require_relative "slideable.rb"

class Queen < Piece
    include Slideable

    def symbol
        @color == :black ? '♕' : '♛' 
    end

    def move_dirs
        h_dirs + d_dirs
    end

end


q = Queen.new(:white, "board", [0,0])
puts q