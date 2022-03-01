--[[
    Script Name    : ItemScripts/Ilucidesbatteredjournal.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.09 09:07:35
    Script Purpose : 
                   : 
--]]

local SearchingTheDepthsofFallenGate = 5307

function examined(Item, Player)
if not HasQuest(Player, SearchingTheDepthsofFallenGate) and not HasCompletedQuest(Player, SearchingTheDepthsofFallenGate) then
OfferQuest(nil, Player, SearchingTheDepthsofFallenGate)
end

conversation = CreateConversation()
AddConversationOption(conversation, "[continue reading]", "page2")
AddConversationOption(conversation, "[close the journal]", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Journal entry, day 15 - I can't seem to figure out this door. I've wracked my brain for a solution, but I can't seem to find a way past it. The zombies are starting to get on my nerves though. Ahh well, back to my exploration!")
   end


function page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[turn the page]", "page3")
AddConversationOption(conversation, "[close the journal]", "CloseItemConversation")    
StartDialogConversation(conversation, 2, Item, Player, "Journal entry, day 17: It is possible that the door is magically sealed. I do feel a bit uneasy getting close to it, but something behind it seems to draw me closer. It's almost as if it's calling out to me. Perhaps the door was magically sealed? I do not know yet, but I will find out!")
end

function page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[turn the page]", "page4")
AddConversationOption(conversation, "[close the journal]", "CloseItemConversation")    
StartDialogConversation(conversation, 2, Item, Player, "Journal entry, day 21: Blast these foul undead! They interrupted my sleep THREE times last night. Or at least, I think it's night. So hard to tell down here. Oh, how I long for the cool air of the thicket and a nice jum jum ale!  A stool, and a nice book ... hey, wait, a book!  I think this might be a good plan...")
end


function page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "[put the journal in your quest satchel]", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Journal entry, day 21-and-a-half: That's it! I'll head to Freeport and see if I can find something of use in that Academy of theirs!  Oh wait ... what's this thing? It's certainly ugly ... hmm ... this could be bad...")
end
