# load 'board.rb'
# load 'board_cases.rb'
require_relative 'players.rb'

class Players
  # TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O).
  # Elle a un attr_writer : il a gagne ?
  attr_accessor :nom, :valeur
  attr_writer :result

  def initialize(nom, valeur)
    # TO DO : doit regler son nom, sa valeur, son etat de victoire
    @nom = nom
    @valeur = valeur
    # @result = result
  end

end

# Classe qui lance le jeu
class Game

  def initialize_game
    # TO DO : créé 2 joueurs, créé un board
    # @plateau = Board.new
    puts "Entrez le nom du joueur 1 :"
    name1 = gets.chomp
    @joueur1 = Players.new(name1, 'O')
    puts "Entrez le nom du joueur 2 :"
    name2 = gets.chomp
    @joueur2 = Players.new(name2, 'X')
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    # Board.to_s
  end

end
Game.new.initialize_game
# Game.new.go