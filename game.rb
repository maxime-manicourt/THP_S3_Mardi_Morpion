# load 'board.rb'
# load 'board_cases.rb'
require_relative 'players.rb'


# Classe qui lance le jeu
class Game

  def initialize
    # TO DO : créé 2 joueurs, créé un board
    # @plateau = Board.new
    @joueur1 = Players.new("Tic", "O")
    @joueur2 = Players.new("Tac", "X")

  end

  def go
    # TO DO : lance la partie
    puts "Hello #{@joueur1}"
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    # Board.to_s
  end

end
Game.new.initialize
Game.new.go