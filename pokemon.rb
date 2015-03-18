class Pokemon

  attr_reader :hp

  MAX_HP = 100 # let's not hardcode this in #initialize

  WEAKNESSES = {
    fire: :water,
    water: :grass,
    grass: :fire
  }

  def self.weak_to?(attacking_type)
    attacking_type == WEAKNESSES[self::TYPE]
  end

  def initialize
    @hp = MAX_HP
  end

  def attack(other_poke)
    other_poke.take_damage(self.class::TYPE)
  end

  protected

  def take_damage(attacking_type)
    damage = self.class.weak_to?(attacking_type) ? 20 : 10
    @hp = [@hp - damage, 0].max
  end
  
end

class Squirtle < Pokemon
  TYPE = :water
end

class Charmander < Pokemon
  TYPE = :fire
end

class Bulbasaur < Pokemon
  TYPE = :grass
end