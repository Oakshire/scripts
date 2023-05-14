--[[
    Script Name    : SpawnScripts/Antonica/JolinaFairfeathersGravestone.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.13 06:05:58
    Script Purpose : 
                   : 
--]]
quest = 5816


function casted_on(NPC, Player, Message)
	if Message == "inspect" then
    conversation = CreateConversation()
if CanReceiveQuest(Player,quest) then
AddConversationOption(conversation, "Brush off the gravestone and read the inscription.","Inscription")
AddConversationOption(conversation, "Leave the gravestone.")
StartDialogConversation(conversation, 1, NPC, Player, "You see a gravestone heavily covered in dust and grime. Underneath the dirt you can barely make out an inscription.")
else
AddConversationOption(conversation, "Leave the gravestone.")
StartDialogConversation(conversation, 1, NPC, Player, "\"Here lies Jolina Fairfeather. Loving wife and mother. And a lover of nature. She was robbed and killed by highwaymen for nothing more than a bag of seeds and a loaf of bread.\"")
end
end
end

function Inscription(NPC, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "I will bring the highwaymen to justice!","QuestStart")
AddConversationOption(conversation, "Leave the gravestone.")
StartDialogConversation(conversation, 1, NPC, Player, "After clearing some of the dirt from the gravestone with your hand you read: \n\n\"Here lies Jolina Fairfeather. Loving wife and mother. And a lover of nature. She was robbed and killed by highwaymen for nothing more than a bag of seeds and a loaf of bread.\"")
end

function QuestStart(NPC,Player)
	    CloseConversation(NPC,Player)
		OfferQuest(NPC, Player, quest)
end

