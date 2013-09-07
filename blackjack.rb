deck = [1, 2, 3, 4, 5, 6]
deck.shuffle!

player_cards = []
dealer_cards = []

2.times do
  player_cards << deck.pop 
  dealer_cards << deck.pop
end

puts player_cards
puts '----'
puts dealer_cards
puts '-----'
puts deck

