require_relative 'deck.rb'
require_relative 'player.rb'

class Game

  attr_reader :deck, :players

  def initialize(number_of_players)
    @players = []   #array of players
    @deck = Deck.new
    @current_player = @players.first

  end

  def play_round
    @deck.deal

  end





end
