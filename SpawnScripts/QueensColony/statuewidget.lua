--[[
	Script Name		:	SpawnScripts/QueensColony/statuewidget.lua
	Script Purpose	:	Offer the quest "Lasydia's Call" upon interaction with this widget
	Script Author	:	Jabantiz
	Script Date		:	9/13/2016
	Script Notes	:	
--]]

local LasydiasCall = 186

function casted_on(NPC, Spawn, Message)
	if Message == "Read Inscription" then
		if not HasQuest(Spawn, LasydiasCall) and not HasCompletedQuest(Spawn, LasydiasCall) then
			OfferQuest(NPC, Spawn, LasydiasCall)
		else
		    AddConversationOption(con, "exit", "CloseConversation")
		    StartDialogConversation(con, 1, NPC, Spawn, "\"Lasydia - as divinely merciful as she is beautiful.  Deliverer of the drowned and caretaker of the castaway.\"  A feeling of purpose surrounds and penetrates you.  You feel a sudden desire to make the waters around you a safer place.")
		end
	end
end