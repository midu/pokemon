# The most advanced pokemon game, ever.

![](http://www.mmogames.com/wp-content/uploads/2014/06/Pokemon-starter-trio.png)

Implement a pokemon game with three different Pokemons:

- Bulbasaur, of type Plant.
- Charmander, of type Fire.
- Squirtle, of type Water.


- Each pokemon has 10 points of force, which means that when they attack another pokemon, they deal 10 damage points.
- Each pokemon has 100 health points.


- Fire Pokemon attacks do double damage on Plant Pokemons
- Water Pokemon attacks do double damage on Fire Pokemons
- Plant Pokemon attacks do double damage on Water Pokemons

This Pokemon game is payed in a Ruby console:

```bash
$ irb -I. -rpokemon
```

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

