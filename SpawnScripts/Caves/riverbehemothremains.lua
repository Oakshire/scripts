--[[
	Script Name	: SpawnScripts/Caves/riverbehemothremains.lua
	Script Purpose	: river behemoth remains
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local CAVES_CONSUL_BREE_QUEST_3 = 225

function spawn(NPC)
	SetRequiredQuest(NPC, CAVES_CONSUL_BREE_QUEST_3, 4)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, CAVES_CONSUL_BREE_QUEST_3) and not QuestStepIsComplete(Spawn, CAVES_CONSUL_BREE_QUEST_3, 4) and SpellName == "Remove River Stone" then
		-- river stone (quest step gets complete once the player recieves the item (obtainitem)
		if not HasItem(Spawn, 10068) then
			SummonItem(Spawn, 10068, 1)
		end
	end
end