--[[
	Script Name	: ItemScripts/DrawingRay.lua
	Script Purpose	: Drawing Ray
	Script Author	: Shatou
	Script Date	: 1/5/2020
	Script Notes	: 
--]]

local CAVES_CONSUL_BREE_QUEST_3 = 494
local RIVER_BEHEMOTH_REMAINS_ID = 1970101
local RIVER_STONE_ID = 11599

function used(Item, Player)
    quest = GetQuest(Player, CAVES_CONSUL_BREE_QUEST_3)
    --Say(Player, "RAY HAS BEEN USED")
	if HasQuest(Player, CAVES_CONSUL_BREE_QUEST_3) then
		spawn = GetTarget(Player)
	--	Say(Player, "PLAYER HAS QUEST")
		if spawn ~= nil then
		--Say(Player, "SPAWN IS NOT NIL")
			-- river behemoth remains
			if GetSpawnID(spawn) == RIVER_BEHEMOTH_REMAINS_ID then
			    CastSpell(Player, 5104, 1)
				GiveQuestItem(quest, Player, "", RIVER_STONE_ID)
			--	Say(Player, "ITEM OBTAINED")
			else
				SendMessage(Player, "The Drawing Ray has no effect. Emma said it must be used on the remains of a river behemoth.")
			end
		else --Say(Player, "SPAWN IS NIL")
	    end
	else --Say(Player, "PLAYER DOES NOT HAVE QUEST") 
	end
end