require_relative "piece.rb"


class Pawn < Piece

    private

    def at_start_row?
        row < col = @pos
        row == 1 || row == 6
    end

    def forward_dir
    end

    def forward_steps
    end

    def side_attacks
    end

end