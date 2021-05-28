require_relative './helper_method'
class Hacks
  include Methods
  attr_reader :hack

  private

  def initialize
    @hack = ['All limitations are self imposed', 'Problems are not stop signs,they are Guidelines', 'be so good,they cant ignore you', 'It always seems impossible untill its done']
  end

  def hack_quotes
    Methods.rand_string(@hack)
  end
end
