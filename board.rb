require_relative "piece/queen.rb"
require_relative "piece/king.rb"
require_relative "piece/bishop.rb"
require_relative "piece/rook.rb"
require_relative "piece/knight.rb"
require_relative "piece/pawn.rb"
require_relative "piece/null_piece.rb"

class Board

    def initialize
        @grid = Array.new(8){Array.new(8)}
        @null_piece = NullPiece.new

        place_pieces
    end

    def place_pieces

        @grid[0,0] = Rook.new(:black, @grid, [0,0])
        @grid[0,1] = Knight.new(:black, @grid, [0,1])
        @grid[0,2] = Bishop.new(:black, @grid, [0,2])
        @grid[0,3] = Queen.new(:black, @grid, [0,3])
        @grid[0,4] = King.new(:black, @grid, [0,4])
        @grid[0,5] = Bishop.new(:black, @grid, [0,5])
        @grid[0,6] = Knight.new(:black, @grid, [0,6])
        @grid[0,7] = Rook.new(:black, @grid, [0,7])

        (2..5).each do |x|
            row[x].map { |y| y = NullPiece.instance }
        end

        @grid[7,0] = Rook.new(:white, @grid, [7,0])
        @grid[7,1] = Knight.new(:white, @grid, [7,1])
        @grid[7,2] = Bishop.new(:white, @grid, [7,2])
        @grid[7,3] = Queen.new(:white, @grid, [7,3])
        @grid[7,4] = King.new(:white, @grid, [7,4])
        @grid[7,5] = Bishop.new(:white, @grid, [7,5])
        @grid[7,6] = Knight.new(:white, @grid, [7,6])
        @grid[7,7] = Rook.new(:white, @grid, [7,7])
    end


    def [](pos)
        row, col = pos
        @grid[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end


    def move_piece(color, start_pos, end_pos)
        return nil if start_pos.piece.nil?
            
        piece = self[start_pos]
        unless piece.valid_moves.include?(end_pos)
          raise "End position is not available"
        end
        unless in_bounds?(end_pos)
            raise "End position is not in bounds"
        end
            
        self[start_pos] = NullPiece.instance
        self[end_pos] = piece
            
        piece.pos = end_pos
    end


    def valid_pos?(pos)
        row, col = pos
        row < grid.first.length &&
        row >= 0 &&
        col >= 0
    end


    def add_piece(piece, pos)
    end



    def checkmate?(color)
    end



    def in_check?(color)
    end



    def find_king(color)
    end



    def pieces
    end



    def dup
    end



    def move_piece!(color, start_pos, end_pos) 
    end

end