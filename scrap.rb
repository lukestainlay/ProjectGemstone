
puts "type something"

sometext = gets.strip.split(" ")

p sometext

sometext.each do |word|
    word.capitalize
    print word
end

p sometext

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