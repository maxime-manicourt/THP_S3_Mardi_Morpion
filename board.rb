require_relative 'board_cases.rb'
class Board
 
 def inialize
    #crée le tableau et les repères
  @board = {
      :h1 => '1', :a1 => ' ', :b1 => ' ', :c1 => ' ',
      :h2 => '2', :a2 => ' ', :b2 => ' ', :c2 => ' ', 
      :h3 => '3', :a3 => ' ', :b3 => ' ', :c3 => ' ',
      :h0 => ' ', :ha => 'a', :hb => 'b', :hc => 'c'
    }
  end

# donner la forme au tableau
  def to_str
    puts (@board[:h1] + ' ' + @board[:a1] + ' ' + @board[:b1] + ' ' + @board[:c1])
    puts (@board[:h2] + ' ' + @board[:a2] + ' ' + @board[:b2] + ' ' + @board[:c2])
    puts (@board[:h3] + ' ' + @board[:a3] + ' ' + @board[:b3] + ' ' + @board[:c3])
    puts (@board[:h0] + ' ' + @board[:ha] + ' ' + @board[:hb] + ' ' + @board[:hc])
    sleep 1
  end
   
      def play(symbol, position)
        @board[position.to_sym] = symbol
      end
  def victory?
    # on définie les combinaisons gagnantes dans un hash
     def game_won?
     if (@board[:a1] == @board[:a2] && @board[:a2] == @board[:a3] && @board[:a3] != '-')||
      (@board[:b1] == @board[:b2] && @board[:b2] == @board[:b3] && @board[:b3] != '-')||
      (@board[:c1] == @board[:c2] && @board[:c2] == @board[:c3] && @board[:c3] != '-')||
      (@board[:a1] == @board[:b1] && @board[:b1] == @board[:c1] && @board[:c1] != '-')||
      (@board[:a2] == @board[:b2] && @board[:b2] == @board[:c2] && @board[:c2] != '-')||
      (@board[:a3] == @board[:b3] && @board[:b3] == @board[:c3] && @board[:c3] != '-')||
      (@board[:a1] == @board[:b2] && @board[:b2] == @board[:c3] && @board[:c3] != '-')||
      (@board[:c1] == @board[:b2] && @board[:b2] == @board[:a3] && @board[:a3] != '-')
      return true
    end
    
      def game_tied?
      @board.each do |key, value|
      if value == '-'
      return false
    end