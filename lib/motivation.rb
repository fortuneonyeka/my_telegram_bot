require_relative './helper_method'

class Motivation
  attr_reader :morning_motivation

  def initialize
    @morning_motivation = [
      'Love for all, hate for none', 'Every momment is a fresh beginning ', 'Whatever you do, do it well', 'What we think,we become'
    ]
  end

  def good_motivation
    Methods.rand_string(@morning_motivation)
  end
end
