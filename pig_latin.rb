# frozen_string_literal: true

require 'rubygems'
require 'minitest/autorun'

class PiglatinTranslatorTest < MiniTest::Test
  VOWELS = %w[a e i o u].freeze

  def test_pig_becomes_igpay
    assert_equal 'igpay', translate('pig')
  end

  def test_eat
    assert_equal 'eatyay', translate('eat')
  end

  def test_string
    assert_equal 'ingstray', translate('string')
  end

#   def test_sentence
#     assert_equal 'jej ejej ejej ejeje ejeje', translate('ekwjhfrkwjehfkjw')
#   end

  def translate(word)
    first_letter = word[0]
    if VOWELS.include?(first_letter)
      word.split('')
      "#{word}yay"
    else
      index = word.chars.index { |x| VOWELS.include? x }
      "#{word[index..-1]}#{word[0..index - 1]}ay"
    end
  end
end