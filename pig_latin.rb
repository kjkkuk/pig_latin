# frozen_string_literal: true

require 'rubygems'
require 'minitest/autorun'

class PiglatinTranslatorTest < MiniTest::Test
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

    
    VOWELS = %w[a e i o u].freeze

  def translate(word)
    first_letter = word[0]

    # "igpay"
    # return "eatay"

    if VOWELS.include?(first_letter)
      ##
      word.split('')

      # word.first = word.last
      "#{word}yay"

    # 'eatyay'
    else
      ##

      # word[1..-1] + word[0]+ "ay"
      # 'igpay'
      index = word.split('').index { |x| x == VOWELS }

      "#{word[index..-1]}#{word[0]}ay"

    end
  end
end