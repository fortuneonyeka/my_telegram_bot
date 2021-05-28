require_relative './helper_method'

class Programmer
  attr_reader :program

  def initialize
    @program = ['Programs must be written for people to read, and only incidentally for machines to execute',
                'Testing leads to failure, and failure leads to Understanding ']
  end

  def program_sayings
    Methods.rand_string(@program)
  end
end
