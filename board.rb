require_relative "piece/queen"
require_relative "piece/king"
require_relative "piece/bishop"
require_relative "piece/rook"
require_relative "piece/knight"
require_relative "piece/pawn"
require_relative "piece/null_piece"

class Board

    def initialize
        @grid = Array.new(8){Array.new(8,NullPiece.instance)}
        @null_piece = NullPiece.instance
        Board.place_pieces(self)
    end

    def self.place_pieces(board)
       
        board[[0,0]] = Rook.new(:black, board, [0,0])
        board[[0,1]] = Knight.new(:black, board, [0,1])
        board[[0,2]] = Bishop.new(:black, board, [0,2])
        board[[0,3]] = Queen.new(:black, board, [0,3])
        board[[0,4]] = King.new(:black, board, [0,4])
        board[[0,5]] = Bishop.new(:black, board, [0,5])
        board[[0,6]] = Knight.new(:black, board, [0,6])
        board[[0,7]] = Rook.new(:black, board, [0,7])

        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])
        board[[1,1]] = Pawn.new(:black, board, [1,1])



        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])
        board[[6,1]] = Pawn.new(:white, board, [6,1])

        board[[7,0]] = Rook.new(:white, board, [7,0])
        board[[7,1]] = Knight.new(:white, board, [7,1])
        board[[7,2]] = Bishop.new(:white, board, [7,2])
        board[[7,3]] = Queen.new(:white, board, [7,3])
        board[[7,4]] = King.new(:white, board, [7,4])
        board[[7,5]] = Bishop.new(:white, board, [7,5])
        board[[7,6]] = Knight.new(:white, board, [7,6])
        board[[7,7]] = Rook.new(:white, board, [7,7])
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
            
        self[start_pos] = @null_piece 
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


b = Board.new
puts b


