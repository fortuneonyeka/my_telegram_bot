class Programmer
  attr_reader :program

  def initialize
    @program = ['Programs must be written for people to read, and only incidentally for machines to execute', 
      'Testing leads to failure, and failure leads to Understanding ']
  end

  def program_sayings
    Programmer.rand_string(@program)
  end

  def self.rand_string(array)
    array[rand(array.size)]
  end
end