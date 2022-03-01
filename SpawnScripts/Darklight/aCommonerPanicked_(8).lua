--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(8).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/16/2015
	Script Notes	:	a commoner (spawn_id 340017) (spawn_location_id 579575)
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
			MovementLoopAddLocation(NPC, -381.35, -62.87, 230.78, 4, 1)
			MovementLoopAddLocation(NPC, -372.50, -62.87, 238.39, 4, 1)
			MovementLoopAddLocation(NPC, -373.73, -62.87, 229.14, 4, 1)
			MovementLoopAddLocation(NPC, -382.43, -62.87, 239.71, 4, 1)
			MovementLoopAddLocation(NPC, -372.71, -62.87, 234.79, 4, 1)
			MovementLoopAddLocation(NPC, -378.37, -62.87, 227.58, 4, 1)
			MovementLoopAddLocation(NPC, -374.99, -62.87, 241.18, 4, 1)
			MovementLoopAddLocation(NPC, -374.23, -62.87, 233.35, 4, 1)
		else
			RemoveSpawnAccess(NPC, Player)
    end
end

function animation(NPC, Player)
	AddSpawnAccess(NPC, Player)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0)
	
end