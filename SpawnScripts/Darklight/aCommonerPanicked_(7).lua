--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(7).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/16/2015
	Script Notes	:	a commoner (spawn_id 340142) (spawn_location_id 579576)
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
			MovementLoopAddLocation(NPC, -373.39, -62.87, 220.84, 4, 1)
			MovementLoopAddLocation(NPC, -376.93, -62.87, 208.55, 4, 1)
			MovementLoopAddLocation(NPC, -380.85, -62.87, 218.72, 4, 1)
			MovementLoopAddLocation(NPC, -372.85, -62.87, 213.51, 4, 1)
			MovementLoopAddLocation(NPC, -384.53, -62.87, 209.33, 4, 1)
			MovementLoopAddLocation(NPC, -377.88, -62.87, 219.22, 4, 1)
			MovementLoopAddLocation(NPC, -370.68, -62.87, 214.95, 4, 1)
			MovementLoopAddLocation(NPC, -384.15, -62.87, 206.85, 4, 1)
			MovementLoopAddLocation(NPC, -377.62, -62.87, 215.29, 4, 1)
		else
			RemoveSpawnAccess(NPC, Player)
    end
end

function animation(NPC, Player)
	AddSpawnAccess(NPC, Player)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0)
	
end