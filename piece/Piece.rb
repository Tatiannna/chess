class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color,board,pos = nil)
    @color = color
    @board = Board.new()
    @pos = pos
  end

  def to_s
    color == :black ? "*" : "."

  end

  def valid_moves
    moves = []

  end

  def pos=(val)
    @pos = val
  end

  def empty?(pos)
    !board[pos].nil? && board[pos].color != color
  end

  def move
    #  moves mean postion change within board, which is prepresennted as a 2D array 

  end
end

