# The most advanced Pokémon game, ever.

![](https://sickr.files.wordpress.com/2013/08/pokemon_starters.png)

# Exercise

Implement a Pokémon game with three different Pokémon:

| Pokémon | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/001.gif) |  ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/004.gif) | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/007.gif) |
| ---     | ---       | ---        | ---      |
| **Name** | Bulbasaur | Charmander | Squirtle |
| **Type**    | Plant | Fire | Water |
| **HP** | 100 | 100 | 100 | 100 |
| **Strength** | 10 | 10 | 10 | 10 |

- Each Pokémon has 10 points of strength, which means that when they attack another Pokémon, they deal 10 damage points.
- Each Pokémon has 100 health points.
- Some Pokémon types do extra damage to other types, see chart below

### Pokemon damage chart

| type  | **Plant** | **Fire** | **Water** |
| :--- | :---:  | :---:  | :---:   |
| **Plant** | 1x    | 1x   | 2x    |
| **Water** | 1x    | 2x   | 1x    |
| **Fire**  | 2x    | 1x   | 1x    |

- Fire Pokémon do double damage to Plant Pokémon
- Water Pokémon do double to Fire Pokémon
- Plant Pokémon do double damage on Water Pokémon

## Game rules

This Pokémon game can be played in Ruby, based on the following instruction:

- Each Pokémon is created by instantiating a class with the type of Pokémon (eg, `squirtle = Squirtle.new`)
- To attack, a Pokémon uses its method `attack` on another Pokémon (eg, `squirtle.attack(bulbasaur)`)
- You can check how many HP's are left by calling `hp` on a Pokémon (eg, `squirtle.hp`)
- When a Pokémon is KO'd, its HP's stay at 0, they can't be negative.

```rb
squirtle = Squirtle.new
squirtle.hp
# => 100

bulbasaur = Bulbasaur.new
bulbasaur.hp = 100

squirtle.attack(bulbasaur)

bulbasaur.hp
# => 90
squirtle.hp
# => 100

bulbasaur.attack(squirtle)

bulbasaur.hp
# => 90
squirtle.hp
# => 80
```

How would you implement this?

You may run `rspec` in the root of this directory to run a basic test suite that will verify that your game respects the rules.

---

[![Build Status](https://travis-ci.org/midu/pokemon.svg)](https://travis-ci.org/midu/pokemon)
