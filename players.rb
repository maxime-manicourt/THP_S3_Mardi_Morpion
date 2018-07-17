# load 'board.rb'
require_relative 'game.rb'

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