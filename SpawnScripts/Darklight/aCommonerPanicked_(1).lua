--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(1).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	a commoner (spawn_id 340142) (spawn_location_id 584360)
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
	if not HasCompletedQuest(Player, SealingTheRift) then
			AddSpawnAccess(NPC, Player)
			MovementLoopAddLocation(NPC, -390.67, -62.87, 247.71, 4, 1)
			MovementLoopAddLocation(NPC, -391.05, -62.87, 254.13, 4, 1)
			MovementLoopAddLocation(NPC, -383.36, -62.87, 247.41, 4, 1)
			MovementLoopAddLocation(NPC, -388.98, -62.87, 256.71, 4, 1)
			MovementLoopAddLocation(NPC, -388.16, -62.87, 255.80, 4, 1)
			MovementLoopAddLocation(NPC, -383.64, -62.87, 254.19, 4, 1)
			MovementLoopAddLocation(NPC, -382.80, -62.87, 255.60, 4, 1)
			MovementLoopAddLocation(NPC, -386.14, -62.87, 248.28, 4, 1)
			MovementLoopAddLocation(NPC, -386.51, -62.87, 248.45, 4, 1)
			MovementLoopAddLocation(NPC, -385.33, -62.87, 252.82, 4, 1)
		else
			RemoveSpawnAccess(NPC, Player)
		end
end
