require_relative './helper_method'

class Hacks
  include Methods
  attr_reader :hack

  def initialize
    @hack = ['Optimisim is the faith that leads to achievement.Nothing can be be achieved without hope and confidence',
             'It always seems impossible untill its done']
  end

  def hack_quotes
    Methods.rand_string(@hack)
  end
end
