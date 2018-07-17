
load "game.rb"
load "player.rb"
load "boardcases.rb"

class Board
  include Enumerable
      attr_reader :plateau
  #création du tableau qui contient 3 arrays qui contiennent chacune 3
  #valeurs (chaque valeur se nomme Cell)  
   def default_grid
    array.new(3) { Array.new(3) { Cell.new } }
   end

      def initialize(input = {})
      @grid = input.fetch(:plateau, default_grid)
       end
  
        def to_s
        #on imprime le plateau de jeu en séparant les cases de 3 lignes.
        puts "\n"
        @grid.each_slice(3) { |row| puts row.join(' | ') }
        puts "\n"
        end
   
      def play(x_or_o, position)
       #On créé une méthode qui permet d'afficher l'un ou l'autre des symbole selon le choix
       #que les joueurs ont fait à l'aide des méthodes de la class "game" 
      case
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
    
    # on définie les combinaisons gagnantes dans un hash
    @winning_positions = [
    #Horizontal
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    #Vertical
    [0, 3, 6], [1, 4, 7],[2, 5, 8],
    #Diagonale
    [0, 4, 8], [2, 4, 6] 
    ]
    if @winning_positions.each do |num|
    
    end
end