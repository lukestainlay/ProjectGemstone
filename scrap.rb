require 'rainbow'


# [1] Rainbow("Druid").chocolate
# [2] Rainbow("Hunter").green
# [3] Rainbow("Mage").deepskyblue
# [4] Rainbow("Paladin").yellowgreen
# [5] Rainbow("Priest").white
# [6] Rainbow("Rogue").darkslategray
# [7] Rainbow("Shaman").blue
# [8] Rainbow("Warlock").purple
# [9] Rainbow("Warrior").red


def colorthewords(words, colors)
    return Rainbow(words).colors
end

puts colorthewords("""You are playing #{type}""", blue)




# puts "type something"

# sometext = gets.strip.split(" ")

# p sometext

# sometext.each do |word|
#     word.capitalize
#     print word
# end

# p sometext

# # sometext = sometext2.chomp(',').to_s

# # p sometext


# cardname = gets.strip.split(" ")

# p cardname

# p cardname.class

# cardname.each do |word|
#     word.capitalize
# end

# p cardname

# p cardname.class