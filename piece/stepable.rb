module Stepable

    def moves
        # use current position (pos)
        #use move diffs to get array of deltas
        #generate array of all possible moves
        #filter out invalid moves
        moves = []

        new_pos = pos.dup
        row, col = new_pos

        move_dirs.each do |dir|
            dx, dy = dir
            if board.valid_pos?(new_pos) && board[new_pos].empty?
                moves << [row + dx, col + dy]
            end
        end
        moves

    end

    private
    
    def move_diffs
        #overwritten by subclass
    end
end