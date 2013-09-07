#How many hours are in a year?
puts 24 * 365

#How many minutes are in a decade? 
puts 60 * 24 * 365 * 10

#What is your age in seconds?
puts 60*60*24*365*36

# What is the authors age?
puts 1160000000/(60 * 60 * 24 * 365)

#Full name greeting program

puts "What is your name?"
first_name =  gets.chomp

puts "What is your middle name?"
second_name = gets.chomp

puts "What is your last name?"
third_name = gets.chomp

puts "Your name is " + first_name + " " + second_name + " " + third_name

#Favorite number program

puts "what is your favorite number?"

response = gets.chomp.to_i
better = response + 1

puts "But " + better.to_s + " is a better number!"


#Angry Boss Program
puts "What do you want????"

request = gets.chomp

puts "WHADDAYA MEAN " + request.upcase + " ?!? YOU'RE FIRED!!!"

#Table of Contecnts problem

Title = "Table of Contents".center(50)
first_chapter = "Chapter: 1 Getting Started".ljust(30) + "page 1".rjust(20)
second_chapter = "Chapter 2: Numbers".ljust(30) + "page 9".rjust(20)
third_chapter = "Chapter 3: Letters".ljust(30) + "page 13".rjust(20)

puts Title
puts "  "
puts first_chapter
puts second_chapter
puts third_chapter

#Bottles of Beer Song

bottles_beer = 5

while bottles_beer > 2
  puts bottles_beer.to_s + " bottles of beer on the wall, " + bottles_beer.to_s + " bottles of beer!"
  bottles_beer = bottles_beer - 1
puts " Take one down, pass it around, " + bottles_beer.to_s + " bottles of beer on the wall!"
end

puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"

#Grandma Exercise including Leap Year Clause

puts "HEY THERE, SONNY! GIVE GRANDMA A KISS!" 

while true
    said = gets.chomp
  if said == "BYE"
    puts "BYE! YOU WIN!" 
  break
end
if said != said.upcase
  puts "HUH?!? SPEAK UP, SONNY!"
else
  random_year = 1930 + rand(21)
  puts "NO, NOT SINCE "  + random_year.to_s + "!"
  end
end

#Ordering a lot of words while taking into account [Enter] 

puts "What are you favorite words in the English Language? I will sort them"

array = []

while true
  user_words = gets.chomp
  if user_words == ""
    break
  end

array << user_words
end

puts "Here they are sorted:"
puts array.sort

#Table of Contents Agan using Array instead of longer way

title = "Table of Contents" 
lines = [ ["Getting Started", 1], ["Numbers", 9], ["Letters", 13]]

puts title.center(50)

puts "------------------------------"

first_line = 1

lines.each do |line|
  name = line[0]
  page = line[1]
  beginning = "Chapter" + first_line.to_s + ": " + name
  ending = "page " + page.to_s
  puts beginning.ljust(30) + ending.rjust(20)
  first_line= first_line + 1
end

#Ask question with using return to exit the loop  and removing answer variable

def ASK question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes"
      return true
    end
    if reply == "no"
      return false
    end
    puts "Please answer yes or no !"
  end
end


likes = ASK "Do you like eating tacos?"

#roman numerals, Old_ Roman_Numeral 4 = IIII

def old_roman_numeral number
  numeral = ""

  numeral = numeral + "M" * (number   / 1000)
  numeral = numeral + "D" * (number % 1000/500)
  numeral = numeral + "C" * (number % 500/ 100) 
  numeral = numeral + "L" * (number % 100/ 50) 
  numeral = numeral + "X" * (number % 50/ 10) 
  numeral = numeral + "V" * (number % 10/ 5) 
  numeral = numeral + "I" *(number % 5/ 1) 
  numeral
end

puts(old_roman_numeral(1999))



#"MODERN" Roman Numeral Stone Carver Theory Problem

def modern_roman_numeral number
  numeral = ""

  numeral_1 = (number   / 1000)
  numeral_2 =  (number % 1000/100)
  numeral_3 = (number % 100/ 10) 
  numeral_4 =  (number % 10) 
  
  roman = "M" * numeral_1

if numeral_2 == 9
  roman = roman + "CM"
elsif numeral_2 == 4
  roman = roman + "CD"
else
  roman = roman + "D" * (number % 1000 / 500)
  roman = roman + "C" *(number % 500/100) 
  end
if numeral_3  == 9
  roman = roman + "XC"
elsif numeral_3 == 4
  roman = roman + "XL"
else
  roman=roman +"L" *(number % 100/ 50)
  roman=roman + "X"*(number % 50/ 10) 
  end
if numeral_4 == 9
  roman = roman + "IX"
elsif numeral_4  == 4
  roman = roman + "IV"
else
  roman = roman + "V" * (number % 10/ 5)
  roman = roman + "I" * (number % 5/ 1) 
end

roman

end


puts(modern_roman_numeral(1999))











