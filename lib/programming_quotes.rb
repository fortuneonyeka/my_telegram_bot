require_relative './helper_method'

class Programmer
  attr_reader :program

  def initialize
    @program = ['Reality is wrong,dreams are for real', 'I dont need it to be easy,Ineed it to worth it','Testing leads to failure, and failure leads to Understanding ']
  end
private
  def program_sayings
    Methods.rand_string(@program)
  end
end
