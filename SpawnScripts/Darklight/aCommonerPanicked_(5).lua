--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(5).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/16/2015
	Script Notes	:	a commoner (spawn_id 340142) (spawn_location_id 323807)
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
			MovementLoopAddLocation(NPC, -400.98, -62.87, 217.42, 4, 1)
			MovementLoopAddLocation(NPC, -404.17, -62.87, 226.41, 4, 1)
			MovementLoopAddLocation(NPC, -413.75, -62.87, 216.07, 4, 1)
			MovementLoopAddLocation(NPC, -410.39, -62.87, 227.05, 4, 1)
			MovementLoopAddLocation(NPC, -406.84, -62.87, 216.14, 4, 1)
			MovementLoopAddLocation(NPC, -406.39, -62.87, 225.80, 4, 1)
			MovementLoopAddLocation(NPC, -413.02, -62.87, 222.00, 4, 1)
			MovementLoopAddLocation(NPC, -400.55, -62.87, 217.44, 4, 1)
			MovementLoopAddLocation(NPC, -409.36, -62.87, 225.38, 4, 1)	
		else
			RemoveSpawnAccess(NPC, Player)
    end
end

function animation(NPC, Player)
	AddSpawnAccess(NPC, Player)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0)
	
end