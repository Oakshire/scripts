--[[
	Script Name	: ItemScripts/WaterFlask.lua
	Script Purpose	: Water Flask
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes :
--]]

local HIGH_ELF_MENTOR_QUEST_1 = 223

function examined(Item, Player)
	conversation = CreateConversation()
	if HasQuest(Player, HIGH_ELF_MENTOR_QUEST_1) and not QuestStepIsComplete(Player, HIGH_ELF_MENTOR_QUEST_1, 2) then
		local fountain = GetSpawn(Player, 2360073)
		if fountain ~= nil and GetDistance(Player, fountain) < 10 then
			AddConversationOption(conversation, "Fill the flask.", "FillFlask")
		end
	end
	AddConversationOption(conversation, "Put the flask away.", "CloseItemConversation")
	StartDialogConversation(conversation, 2, Item, Player, "This is the flask of water that Vindain has asked you to fill with blessed water from the Fountain of Valor.")
end

function FillFlask(Item, Player)
	SetStepComplete(Player, HIGH_ELF_MENTOR_QUEST_1, 2)
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the flask away.", "CloseItemConversation")
	StartDialogConversation(conversation, 2, Item, Player, "You dip the flask into the fountain and fill it with some blessed water.")
end
