require_relative "/piece/queen.rb"
require_relative "/piece/king.rb"
require_relative "/piece/bishop.rb"
require_relative "/piece/rook.rb"
require_relative "/piece/knight.rb"
require_relative "/piece/pawn.rb"
require_relative "/piece/null_piece.rb"

class Board

    # def initialize(color,board,pos = nil)

    def initialize
        @grid = Array.new(8){Array.new(8)}

        
        @null_piece = NullPiece.new

        @grid[0,0] = Rook.new("black", @grid,   )

        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }
        @grid[0].map {|x| x = Piece.new  }

        @grid[1].map {|x| x = Pawn.new  }


        (2..5).each do |x|
            row[x].map { |y| NullPiece.instance }
        end
        # @grid[2].map {|x| x = NullPiece.instance }
        # @grid[3].map {|x| x = NullPiece.instance  }
        # @grid[4].map {|x| x = NullPiece.instance  }
        # @grid[5].map {|x| x = NullPiece.instance  }


        @grid[6].map {|x| x = Pawn.new  }
        @grid[7].map {|x| x = Piece.new  }
    end


    def [](pos)
        row, col = pos
        @grid[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end


    def move_piece(start_pos, end_pos)
        # will need color as a parameter but excluded it for now, just for testing :)
        return nil if start_pos.piece.nil?
            
        piece = self[start_pos]
        unless piece.valid_moves.include?(end_pos)
          raise "End position is not available"
        end
        unless in_bounds?(end_pos)
            raise "End position is not in bounds"
        end
            
        self[start_pos] = nil
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