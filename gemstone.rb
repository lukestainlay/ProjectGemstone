


require_relative 'lightforge.rb'
require_relative 'heartharena.rb'
require 'rainbow'

lightforge = LightForge::LIGHTFORGE
heartharena = HearthArena::HEARTHARENA


puts """

What is the class you are playing?

[1] #{Rainbow("Druid").chocolate}
[2] #{Rainbow("Hunter").green}
[3] #{Rainbow("Mage").deepskyblue}
[4] #{Rainbow("Paladin").yellowgreen}
[5] #{Rainbow("Priest").white}
[6] #{Rainbow("Rogue").darkslategray}
[7] #{Rainbow("Shaman").blue}
[8] #{Rainbow("Warlock").purple}
[9] #{Rainbow("Warrior").red}

Please enter a number

"""

numberselection = gets.to_i
type = ""

case numberselection
when 1
    type = "Druid"
    typecolor = Rainbow("Druid").chocolate
when 2
    type = "Hunter" 
    typecolor = Rainbow("Hunter").green
when 3
    type  = "Mage"
    tyoecolor = Rainbow("Mage").deepskyblue
when 4
    type = "Priest"
    typecolor = Rainbow("Priest").white
when 5
    type = "Paladin"
    typecolor = Rainbow("Paladin").yellowgreen
when 6
    type = "Rogue"
    typecolor = Rainbow("Rogue").darkslategray
when 7
    type = "Shaman"
    typecolor = Rainbow("Shaman").blue
when 8
    type = "Warlock"
    typecolor = Rainbow("Warlock").purple
when 9
    type = "Warrior"
    typecolor = Rainbow("Warrior").red

end

puts """

You are playing #{typecolor}.

"""




# # # lightforge value return:

def findlightforgescore(type, cardname)

    lightforge = LightForge::LIGHTFORGE

    i = 0
    y = 0

    while i < 1000

        if lightforge[i][:"Name"] == cardname  

        while y < 10
                
                if lightforge[i][:"Scores"][y][:"Hero"] == type
        
                lightforgescore = lightforge[i][:"Scores"][y][:"Score"]
                i = 1000
                y = 10

                else
                y += 1

                end

            end
        
        else
            i += 1

        end

    end

return lightforgescore

end

# #  heartharena value return

def findheartharenascore(type, cardname)

    heartharena = HearthArena::HEARTHARENA
    heartharenascore = heartharena[type.to_sym][cardname.to_sym]

    return heartharenascore

end


## FIRST CARD:
loop do

puts """

What is your first card?

"""

# returned string to be in Snake Case (can this be a method?):

cardname1 = gets.strip.split(" ")
arr = []

cardname1.each do |word|
    arr.push(word.capitalize)
end

cardname1 = arr.join(" ").to_s

puts cardname1



cardname1_lfs = findlightforgescore(type, cardname1)
cardname1_has = findheartharenascore(type, cardname1)


puts """

The Light Forge score is: #{cardname1_lfs}
The Hearth Arena score is: #{cardname1_has}

"""

## SECOND CARD:

puts """

What is your second card?

"""

cardname2 = gets.strip.to_s

cardname2_lfs = findlightforgescore(type, cardname2)
cardname2_has = findheartharenascore(type, cardname2)


puts """

The Light Forge score is: #{cardname2_lfs}
The Hearth Arena score is: #{cardname2_has}

"""

 ## THIRD CARD

 puts """

 What is your third card?
 
 """
 
 cardname3 = gets.strip.to_s
 
 cardname3_lfs = findlightforgescore(type, cardname3)
 cardname3_has = findheartharenascore(type, cardname3)
 
 
 puts """
 
 The Light Forge score is: #{cardname3_lfs}
 The Hearth Arena score is: #{cardname3_has}
 
 """
puts "Would you like to run again? (Y or N)"

runagain = gets.strip.upcase

break if runagain == "N"

end

puts "Enjoy your Hearthstone game. Good Luck!"






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
