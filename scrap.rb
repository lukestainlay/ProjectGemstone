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


# def colorthewords(words, colors)
#     return Rainbow(words).colors
# end

# puts colorthewords("""You are playing #{type}""", blue)

def snakecase(string)
    arr = []
    new_arr = string.split(" ")
        new_arr.each do |word|
            arr.push(word.capitalize)
        end
    return arr.join(" ").to_s
end

fun = "good fun time"

puts snakecase(fun)


# returned string to be in Snake Case (can this be a method?):

# how to make first letter upcase ??
# # # validate cardname through heartharena
# def cardnamevalidate(cardname)
# if heartharena[type.to_sym][cardname.to_sym] == nil
#     puts """
#         Your card was not recognised. 
#         Please type card name again
#         """
#     cardname = gets.strip.to_s
#     # # what if this cardname is also wrong?????
# else
#     cardname = cardname
# end
# # # #  heartharena value return:
# heartharenascore = heartharena[type.to_sym][cardname.to_sym]


# cardname1.each do |word|
#     arr.push(word.capitalize)
# end

# cardname1 = arr.join(" ").to_s

# puts cardname1

# cardname1 = gets.strip.split(" ")
# arr = []

# cardname1.each do |word|
#     arr.push(word.capitalize)
# end

# cardname1 = arr.join(" ").to_s

# puts cardname1


# puts "type something"

# sometext = gets.strip.split(" ")

# p sometext
# arr = []

# sometext.each do |word|
#     arr.push(word.capitalize)
# end
# puts arr.join(" ").to_s


# p sometext

# sometext = sometext2.chomp(',').to_s

# p sometext


# cardname = gets.strip.split(" ")

# p cardname

# p cardname.class

# cardname.each do |word|
#     word.capitalize
# end

# p cardname

# p cardname.class