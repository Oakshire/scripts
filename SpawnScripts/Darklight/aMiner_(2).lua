--[[
	Script Name		:	SpawnScripts/Darklight/aMiner_(2).lua
	Script Purpose	:	A Miner before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	a miner (spawn_id 340016) (spawn_location_id 584440)
	Script Notes	:	Location is in Hate's Envy
--]]

local SealingTheRift = 122
local ReclaimingTheSableveinTear = 124

function spawn(NPC, Player)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "QuestCheck", "QuestCheck")
end

function respawn(NPC)
	spawn(NPC)
end

function QuestCheck(NPC, Player)
	if HasCompletedQuest(Player, ReclaimingTheSableveinTear) then
			AddSpawnAccess(NPC, Player)
			MovementLoopAddLocation(NPC, -403.55, -62.87, 240.82, 2)
			MovementLoopAddLocation(NPC, -405.77, -62.87, 230.47, 2)
			MovementLoopAddLocation(NPC, -405.67, -62.87, 219.67, 2)
			MovementLoopAddLocation(NPC, -396.86, -62.87, 206.27, 2)
			MovementLoopAddLocation(NPC, -385.66, -62.87, 206.95, 2)
			MovementLoopAddLocation(NPC, -377.26, -62.87, 215.62, 2)
			MovementLoopAddLocation(NPC, -376.80, -62.87, 235.30, 2)
			MovementLoopAddLocation(NPC, -393.61, -62.87, 246.72, 2)
		else
			RemoveSpawnAccess(NPC, Player)
    end
end