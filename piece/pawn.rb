require_relative "piece.rb"


class Pawn < Piece

    def symbol
        color == :black ? "♙" : "♟"
    end


    def moves
        moves = forward_dir + side_attacks
    end    

    private

    def at_start_row?
        color == :black? && current_row == 1 ||
        color == :white? && current_row == 6
    end

    def forward_dir
        color == :black ? 1 : -1
    end

    def forward_steps
        moves = []
        current_row,current_col = pos
        one_forward = []
        if board[one_forward].empty?
            moves << one_forward
        end
        two_forward = [current_row + (forward_dir * 2), current_col]
        if board[two_forward].empty?
            moves << two_forward
        end
        moves
    end

    def side_attacks
        moves = []
        check_left  = [current_row + forward_dir,current_col + 1]
        check_right = [current_row + forward_dir,current_col - 1]
        if board[check_left].color != board[pos].color
            moves << check_left
        end
        if board[check_right].color != board[pos].color
            moves << check_right
        end
        moves
    end

end