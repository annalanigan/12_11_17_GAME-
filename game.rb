class Game

  attr_accessor :player, :hiddenword, :guessed_letters

  def initialize (player, hiddenword)
    @player = player
    @hiddenword = hiddenword
    @guessed_letters = []
  end

  def make_a_guess(game_word, letter)
    @guessed_letters << letter
    game_word_array = game_word.word.split('')
    game_word_array.include?(letter)
  end

  def display(game_word, letter)
    result = []
    game_word_array = game_word.word.split('')
    result = game_word_array.map { |x| x != letter ? '*' : x }
    return result.join('')
  end





end
