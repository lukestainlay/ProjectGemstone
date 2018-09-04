


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

What is your first card?

"""

# how to make first letter upcase ??

cardname = gets.strip.to_s



# # validate cardname through heartharena

if heartharena[type.to_sym][cardname.to_sym] == nil
    puts """
        Your card was not recognised. 
        Please type card name again
        """
    cardname = gets.strip.to_s
    # # what if this cardname is also wrong?????
else
    cardname = cardname
end


# # #  heartharena value return:

heartharenascore = heartharena[type.to_sym][cardname.to_sym]


# # lightforge value return:

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


# #  heartharena value return

heartharenascore = heartharena[type.to_sym][cardname.to_sym]


puts """

The Light Forge score is: #{lightforgescore}
The Hearth Arena score is: #{heartharenascore}

"""







