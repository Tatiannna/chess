require_relative "board.rb"

class Display
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def render
    8.times do |row|
      puts "-----------------------"
      8.times do |col|
        piece = board[[row,col]]
        if piece = nil?
          print " "
        else
          print "#{board[[row,col]]}"
      end
    end
    puts ""
  end
end
end

b = Board.new
d = Display.new(b)
p d