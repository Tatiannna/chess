require_relative "../display.rb"

class Player
    def initialize(color, display)
        @color = color
        @display  = Display.new
end