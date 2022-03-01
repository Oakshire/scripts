--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(2).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/14/2015
	Script Notes	:	a commoner (spawn_id 340142) (spawn_location_id 584366)
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
			MovementLoopAddLocation(NPC, -401.28, -62.87, 258.66, 4, 1)
			MovementLoopAddLocation(NPC, -404.47, -62.99, 255.70, 4, 1)
			MovementLoopAddLocation(NPC, -408.42, -62.87, 260.58, 4, 1)
			MovementLoopAddLocation(NPC, -405.94, -62.77, 260.96, 4, 1)
			MovementLoopAddLocation(NPC, -404.88, -62.87, 262.58, 4, 1)
			MovementLoopAddLocation(NPC, -406.65, -62.97, 251.19, 4, 1)
			MovementLoopAddLocation(NPC, -405.48, -62.97, 256.98, 4, 1)
			MovementLoopAddLocation(NPC, -407.14, -62.97, 251.25, 4, 1)
			MovementLoopAddLocation(NPC, -405.39, -62.87, 261.57, 4, 1)
			MovementLoopAddLocation(NPC, -409.59, -63.07, 256.49, 4, 1)
			MovementLoopAddLocation(NPC, -408.74, -62.87, 260.52, 4, 1)
			MovementLoopAddLocation(NPC, -408.59, -62.95, 249.67, 4, 1)
			MovementLoopAddLocation(NPC, -405.20, -62.90, 257.99, 4, 1)
			MovementLoopAddLocation(NPC, -411.59, -63.04, 254.50, 4, 1)
			MovementLoopAddLocation(NPC, -406.46, -62.87, 260.43, 4, 1)
			MovementLoopAddLocation(NPC, -406.71, -63.02, 256.54, 4, 1)
		else
			RemoveSpawnAccess(NPC, Player)
    end
end