load "board.rb" 

class Players
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :nom, :valeur
  attr_writer :result

  def initialize(nom, valeur, result)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @nom = nom
    @valeur = valeur
    @victory = result
  end

end
