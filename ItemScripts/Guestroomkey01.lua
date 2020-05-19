--[[
	Script Name		:	ItemScripts/Guestroomkey01.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/27/2016
	Script Notes	:	
--]]

function examined(Item, Player)
	if HasQuest(Player, 173) and GetQuestStep(Player, 173) == 2 then
		SetStepComplete(Player, 173, 2)
		RemoveItem(Player, 7979)
	end
end