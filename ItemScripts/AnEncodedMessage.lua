--[[
	Script Name	: ItemScripts/AnEncodedMessage.lua
	Script Purpose	: 
	Script Author	: premierio015
	Script Date	    : 03.01.2020
	Script Notes	:  
--]]

local QUEST = 425

function examined(Item, Player)
	local con = CreateConversation()
	if GetQuestStep(Player, QUEST) == 5 then
	AddConversationOption(con, "Decode the message", "Decode")
	end
	AddConversationOption(con, "Put the message away", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "ohlv wkv onie kn enioeee vevvkge now lo lv iovpleoe gkxvle kne enolxelw unxekekvle vw knwone unlevv wou hkpin oo geo xekllw luikw kne klguxe lo ouo  lk vo ohen huzzkh kox wou")
	end
	
	
function Decode(Item, Player)
    SetStepComplete(Player,QUEST, 5)
	local con = CreateConversation()
	AddConversationOption(con, "Put the message away", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "General, we have not seen any memories return in the three days the refugees have been held.  The magic seems to work as promised by the sorcerer.  As agreed we can buy more for the same price as the first group.  The next meeting is scheduled for this evening at the old mausoleum between Dog Trapper Lake and Dead Man's Valley.")
	end