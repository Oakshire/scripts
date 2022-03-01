--[[
	Script Name		:	SpawnScripts/Darklight/aMiner_(1).lua
	Script Purpose	:	A Miner before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	a miner (spawn_id 340016) (spawn_location_id 584439)
	Script Notes	:	Location is in Hate's Envy
--]]

local ReclaimingTheSableveinTear = 124

function spawn(NPC, Player)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "QuestCheck", "QuestCheck")
end

function respawn(NPC)
	spawn(NPC)
end

function QuestCheck(NPC, Player)
	if not HasCompletedQuest(Player, ReclaimingTheSableveinTear) then
			AddSpawnAccess(NPC, Player)
		else
			RemoveSpawnAccess(NPC, Player)
    end
end

