# frozen_string_literal: true

require 'rubygems'
require 'minitest/autorun'

# Translate strings to pig latin
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

  def test_sentence
    assert_equal 'ingstray eatyay igpay', translate('string eat pig')
  end

  def translate(str)
    b = str.split(' ').map do |word|
      first_letter = word[0]
      if VOWELS.include?(first_letter)
        "#{word.split('')}yay"
      else
        index = word.chars.index { |x| VOWELS.include? x }
        "#{word[index..-1]}#{word[0..index - 1]}ay"
      end
    end
    b.join(' ')
  end
end
