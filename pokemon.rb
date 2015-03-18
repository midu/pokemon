class Pokemon

  attr_reader :hp

  MAX_HP = 100 # let's not hardcode this in #initialize

  def initialize
    @hp = MAX_HP
  end

  def attack(other_poke)
    other_poke.take_damage
  end
  
  protected

  def take_damage
    @hp -= 10
  end
  
end

class Squirtle < Pokemon  
end

class Charmander < Pokemon  
end

class Bulbasaur < Pokemon  
end