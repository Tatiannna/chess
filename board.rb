require_relative "/piece/Piece.rb"

class Board

    def initialize
        @rows = Array.new(8){Array.new(8)}
        #@null_piece = NullPiece


        @rows[0].map {|x| x = Piece.new  }
        @rows[1].map {|x| x = Piece.new  }


        @rows[2].map {|x| x = NullPiece.new  }
        @rows[3].map {|x| x = NullPiece.new  }
        @rows[4].map {|x| x = NullPiece.new  }
        @rows[5].map {|x| x = NullPiece.new  }


        @rows[6].map {|x| x = Piece.new  }
        @rows[7].map {|x| x = Piece.new  }
    end


    def [](pos)
        row, col = pos
        @rows[row][col]
    end


    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
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