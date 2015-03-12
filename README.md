# The most advanced Pokémon game, ever.

![](http://www.mmogames.com/wp-content/uploads/2014/06/Pokémon-starter-trio.png)

# Exercise

Implement a Pokémon game with three different Pokémons:

| Pokémon | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/001.gif) |  ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/004.gif) | ![](http://www.pokemon-online.eu/images/pokemon/x-y/animated/007.gif) |
| ---     | ---       | ---        | ---      |
| **Name** | Bulbasaur | Charmander | Squirtle |
| **Type**    | Plan | Fire | Water |
| **HP** | 100 | 100 | 100 | 100 |
| **Strength** | 10 | 10 | 10 | 10 |

- Each Pokémon has 10 points of strength, which means that when they attack another Pokémon, they deal 10 damage points.
- Each Pokémon has 100 health points.

| type  | **Plant** | **Fire** | **Water** |
| :--- | :---:  | :---:  | :---:   |
| **Plant** | 1x    | 1x   | 2x    |
| **Water** | 1x    | 2x   | 1x    |
| **Fire**  | 2x    | 1x   | 1x    |

- Fire Pokémons do double damage to Plant Pokémons
- Water Pokémons do double to Fire Pokémons
- Plant Pokémons do double damage on Water Pokémons

## Game rules

This Pokémon game can be played in Ruby, based on the following instruction:

- Each Pokémon is created by instanciating a class with the type of Pokémon (eg, `squirtle = Squirtle.new`)
- To attack, a Pokémon uses its method `attack` on another Pokémon (eg, `squirtle.attack(bulbasaur)`)
- You can check how many HP's are left by calling `hp` on a Pokémon (eg, `squirtle.hp`)
- When a Pokémon is KO, its HP's stay at 0, they can't be negative.


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
