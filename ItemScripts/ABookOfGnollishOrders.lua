--[[
	Script Name	: ItemScripts/ABookOfGnollishOrders.lua
	Script Purpose	: A Book of Gnollish Orders
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

local QUEST_1_CONSULBREE = 361

function examined(Item, Player)
	if HasQuest(Player, QUEST_1_CONSULBREE) and GetQuestStep(Player, QUEST_1_CONSULBREE) == 2 then
		SetStepComplete(Player, QUEST_1_CONSULBREE, 2)
	end
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the book away.")
	StartDialogConversation(conversation, 2, Item, Player, "This is the book of gnollish orders that Bree was searching for. There is a symbol on each page of a paw held to an eye.")
end