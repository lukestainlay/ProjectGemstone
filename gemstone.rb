


require_relative 'lightforge.rb'
require_relative 'heartharena.rb'

lightforge = LightForge::LIGHTFORGE
heartharena = HearthArena::HEARTHARENA

puts """

What is the class you are playing?

[1] Druid
[2] Hunter
[3] Mage
[4] Paladin
[5] Priest
[6] Rogue
[7] Shaman
[8] Warlock
[9] Warrior

Please enter a number

"""

numberselection = gets.to_i
type = ""

case numberselection
when 1
    type = "Druid"
when 2
    type = "Hunter"
when 3
    type = "Mage"
when 4
    type = "Paladin"
when 5
    type = "Priest"
when 6
    type = "Rogue"
when 7
    type = "Shaman"
when 8
    type = "Warlock"
when 9
    type = "Warrior"

end


puts """

You are playing #{type}.

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

puts """

What is your first card?

"""

cardname1 = gets.strip.to_s

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






## Colourise

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
