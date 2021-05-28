# frozen_string_literal: true

class Motivation
  attr_reader :morning_motivation

  def initialize
    @morning_motivation = [
      'The day has yet to be written, but there are several ways to fill the page, its entirely up to you to write your own story', 'Blessings of grace and peace be with you today and every day'
    ]
  end

  def self.rand_string(array)
    array[rand(array.size)]
  end

  def good_motivation
    Motivation.rand_string(@morning_motivation)
  end
end
