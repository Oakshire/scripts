--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(4).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/16/2015
	Script Notes	:	a commoner (spawn_id 340017) (spawn_location_id 579574)
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
	if not HasCompletedQuest(Player, ReclaimingTheSableveinTear) then
			AddSpawnAccess(NPC, Player)
			MovementLoopAddLocation(NPC, -404.44, -62.87, 229.99, 4, 1)
			MovementLoopAddLocation(NPC, -410.34, -62.87, 239.73, 4, 1)
			MovementLoopAddLocation(NPC, -399.75, -62.87, 233.78, 4, 1)
			MovementLoopAddLocation(NPC, -403.67, -62.87, 240.28, 4, 1)
			MovementLoopAddLocation(NPC, -407.42, -62.87, 232.79, 4, 1)
			MovementLoopAddLocation(NPC, -401.65, -62.87, 241.27, 4, 1)
			MovementLoopAddLocation(NPC, -405.10, -62.87, 237.00, 4, 1)
			MovementLoopAddLocation(NPC, -403.93, -62.87, 225.40, 4, 1)
			MovementLoopAddLocation(NPC, -411.33, -62.87, 229.45, 4, 1)
			MovementLoopAddLocation(NPC, -412.62, -62.87, 235.85, 4, 1)
			MovementLoopAddLocation(NPC, -401.91, -62.87, 232.67, 4, 1)	
		else
			RemoveSpawnAccess(NPC, Player)
    end
end