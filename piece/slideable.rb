module Slideable

    def h_dirs
        [ [0, 1], [0, -1], [1, 0], [-1, 0]]
    end

    def dl_dirs
        [[1,1], [-1,1], [-1, -1], [1, -1]]
    end

    def moves
        # expects a #move_dirs method to be implemented by base class
        # returns an array of all possible moves for a given piece
        res = []

        move_dirs.each do |dir|
            res += grow_unblocked_moves_in_dir(dir)
        end

    end

    def move_dirs 
        raise 'must be overwrittten by base class'
    end
    
    def grow_unblocked_moves_in_dir(dir)
        moves [] # an array of possible moves in that direction

        dx, dy = dir
        #when the class invokes this method, we want it to return all the places the piece
        # can move. not blocked by another piece. Is this spot on the board, is there a piece there
        # if a pice is there can we capturor is it our own piece. dont consider the next spot in that direction if 
        #blocked. kep going UNTIl we meet one of those conditions
        
        new_pos = pos.dup # we dont actually wanna change the position.
                              # we dont wanna modify pos. hypothetical
        loop do
            new_pos = [new_pos[0] + dx, new_pos[1] + dy]

            if board.valid_pos?(new_pos) && board[new_pos].empty?
                moves << new_pos
            else
                return moves
            end
        end
        
    end
end