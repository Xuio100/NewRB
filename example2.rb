def cards_total(cards) 
  arr = cards.map{|e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 
      total += 10
    else
      total += value.to_i
    end
  end

  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end

  total
end

puts 'Lets play BlackJack'

suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

deck = suits.product(cards)
deck.shuffle!



mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = cards_total(dealercards)
mytotal = cards_total(mycards)


puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of #{dealertotal}"
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of: #{mytotal}"
puts '----------'
puts "Press 1) for hit or 2) for stay"
hit_or_stay = gets.chomp
