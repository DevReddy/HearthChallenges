# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Challenge.create(author: 'Tsanummy', text: 'Build a deck with only cards that cost 3-5 mana and win.', rel_class: 'All Classes')
Challenge.create(author: 'Tsanummy', text: 'Build a deck with only minions that have more health than attack and win.', rel_class: 'All Classes')
Challenge.create(author: 'Tsanummy', text: 'Build a deck with only minions that have less than 4 health and win.', rel_class: 'All Classes')
Challenge.create(author: 'Tsanummy', text: 'Only play one card per turn and win.', rel_class: 'All Classes')
Challenge.create(author: 'Tsanummy', text: "Don't use your hero power the whole game and win.", rel_class: 'All Classes')
Challenge.create(author: 'testest12321', text: 'Win using Hemet Nesingwary at least once.', rel_class: 'All Classes')

Challenge.create(author: 'testest12321', text: 'Swipe 7 minions to death at once.', rel_class: 'Druid')
Challenge.create(author: 'testest123212', text: 'Kill your opponent with fatigue damage with a Mill Druid deck.', rel_class: 'Druid')

Challenge.create(author: 'testest12321', text: 'Mind Control a 1 mana minion and still win the game.', rel_class: 'Priest')
Challenge.create(author: 'testest12321', text: "Get a legendary minion from your opponent's deck using Mind Games", rel_class: 'Priest')

Challenge.create(author: 'testest12321', text: 'Brawl with 1 minion on either side of the board and have yours survive.', rel_class: 'Warrior')
Challenge.create(author: 'testest123212', text: 'Have at least 6 Grim Patrons on the board at once.', rel_class: 'Warrior')

Challenge.create(author: 'testest12321', text: 'Win a game without using minions.', rel_class: 'Mage')
Challenge.create(author: 'testest123212', text: "Make an all random deck (as much RNG as you can fit) and win.", rel_class: 'Mage')

Challenge.create(author: 'testest12321', text: "Win a game as JARAXXUS, EREDAR LORD OF THE BURNING LEGION!", rel_class:'Warlock')
Challenge.create(author: 'testest123212', text: "Summon Mal'Ganis from your hand with a Voidcaller.", rel_class:'Warlock')

Challenge.create(author: 'testest12321', text: "Win with a buffed windfury minion or weapon.", rel_class:'Shaman')
Challenge.create(author: 'testest123212', text: "Bloodlust with at least 5 minions on board.", rel_class:'Shaman')

Challenge.create(author: 'testest12321', text: "Kill your opponent with fatigue damage using a Mill Rogue deck.", rel_class:'Rogue')
Challenge.create(author: 'testest123212', text: "Deal at least 15 damage after starting your turn with no minions on the board.", rel_class:'Rogue')

Challenge.create(author: 'testest12321', text: "Kill your opponent with Eye for an Eye.", rel_class:'Paladin')
Challenge.create(author: 'testest123212', text: "Kill 7 minions with 1 Consecration.", rel_class:'Paladin')

Challenge.create(author: 'testest12321', text: "Win by turn 5.", rel_class:'Hunter')
Challenge.create(author: 'testest123212', text: "'Hunt Alone': Win without using minions.", rel_class:'Hunter')
