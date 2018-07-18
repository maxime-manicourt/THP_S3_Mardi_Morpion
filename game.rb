
require_relative 'board.rb'
require_relative 'board_cases.rb'
require_relative 'players.rb'

# Classe qui lance le jeu
class Game

  def initialize
    @joueur1 = Players.new("name1", "O")
    @joueur2 = Players.new("name2", "X")

  end
#on initialise les tours de jeu (choix d'une case existente et vide sinon erreur et vainqueur)
def move(player_name, symbol)
    valid = false
    while valid == false
      puts "#{player_name}, C'est ton tour choisi un carré."
      position = gets.chomp.downcase
        return exit
      elsif not position.match /[abc][123]/
        puts "Carré non valide."
        sleep 1
      elsif @board[position.to_sym] != '-'
        puts 'carré  occupé.' 
        sleep 1
      else 
        valid = true
        @board[position.to_sym] = symbol
      end
    until board.game_over?
  board.display_board
  board.move(active_player.name, active_player.symbol)
  if board.game_won?
    board.display_board
    puts "#{active_player.name} a gagné! Bravo."

  end



  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    # Board.to_s
  end
    end


