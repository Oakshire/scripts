--[[
	Script Name	: ItemScripts/DelVarun'sPack.lua
	Script Purpose	: Examine for quest update
	Script Author	: Shatou
	Script Date	: 1/10/2020
	Script Notes	: 
--]]

local NEWS_FOR_GERMAIN_QUEST_ID = 520

function examined(Item, Player)
    conversation = CreateConversation()
    
    AddConversationOption(conversation, "Read the notes.", "ReadTheNotes")
    StartDialogConversation(conversation, 2, Item, Player, "The satchel contains various items that Del Varun may have needed out in the field. Among these items are some sheets of paper bound together, quite possibly Varun's notes.")
end

function ReadTheNotes(Item, Player)
   conversation = CreateConversation()
   
   SetStepComplete(Player, NEWS_FOR_GERMAIN_QUEST_ID, 2)
   AddConversationOption(conversation, "Put the notes away")
   StartDialogConversation(conversation, 2, Item, Player, "\"Something is certainly strange, but I have no idea what is wrong. The animals have all been acting strange lately. There is an area just north of the pond I have been scouting near that may provide more information. There is a small group of plants surrounded by a strange aura. I haven't seen any animals near the plants, so I am not yet sure if it is safe. I will check it out from a bit closer tomorrow, once I'm finished with the area south of the pond.\"")
end