
load game.rb
load player.rb
load boardcases.rb

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_reader :plateau
    
   def default_grid
    array.new(3) { Array.new(3) { Cell.new } }
   end

    def initialize(input = {})
      @grid = input.fetch(:plateau, default_grid)
    end
  
    def to_s
   
    end

      def play(x_or_o, position)
      case_nb
      when position == "1"
      @board_positions[:one] = x_or_o
      when position == "2"
      @board_positions[:two] = x_or_o
      when position == "3"
       @board_positions[:three] = x_or_o
      when position == "4"
      @board_positions[:four] = x_or_o
      when position == "5"
      @board_positions[:five] = x_or_o
      when position == "6"
      @board_positions[:six] = x_or_o
      when position == "7"
      @board_positions[:seven] = x_or_o
      when position == "8"
      @board_positions[:eight] = x_or_o
      when position == "9"
      @board_positions[:nine] = x_or_o
      end

  def victory?
    #TO DO : qui gagne ?
  end
end