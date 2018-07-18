require_relative 'board.rb'

class Players
  attr_accessor: :player :name 
  #Demander le nom des joueur et leur attribuer un symbole
board = Board.new
puts 'Coucou, vous voulez jouer au Morpion? Joueur 1 quel est ton nom?'
name1 = gets.chomp
player1 = Player.new(name1, 'X')
puts "Super, #{name1}. Tu as le symbole 'X'"
sleep 1
puts 'Et toi, joueur 2, quel est ton nom?'
name2 = gets.chomp
player2 = Player.new(name2, 'O')
puts "Cool, ton symbole est 'O'"
sleep 1