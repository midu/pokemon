### Parent Pokemon class

class Pokemon

  attr_reader :hp

  # Let's avoid magic numbers in #initialize
  # If we ever wanted to individualize these for different Pokemon species, 
  # we'd move these assignments to the child classes
  MAX_HP = 100 
  STRENGTH = 10

  # Simple lookup hash for type weaknesses
  WEAKNESSES = {
    fire: :water,
    water: :plant,
    plant: :fire
  }

  def self.weak_to?(attacking_type)
    # TYPE class constant gets set in each Pokemon child class
    attacking_type == WEAKNESSES[self::TYPE]
  end

  def initialize
    @hp = MAX_HP
  end

  def attack(other_poke)
    other_poke.take_damage(STRENGTH, self.class::TYPE)
  end

  protected

  # Much cleaner for each Pokemon to deal with its own HP
  # We pass in STRENGTH because damage depends on attacking Pokemon strength
  def take_damage(base_damage, attacking_type)
    damage = self.class.weak_to?(attacking_type) ? 2 * base_damage : base_damage
    @hp = [@hp - damage, 0].max # Stay positive, dog!
  end
  
end



### Specific-Pokemon child classes, we set TYPE here

class Squirtle < Pokemon
  TYPE = :water
end

class Charmander < Pokemon
  TYPE = :fire
end

class Bulbasaur < Pokemon
  TYPE = :plant
end