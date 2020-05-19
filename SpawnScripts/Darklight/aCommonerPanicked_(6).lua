--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(6).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/16/2015
	Script Notes	:	a commoner (spawn_id 340017) (spawn_location_id 317253)
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
			MovementLoopAddLocation(NPC, -388.34, -62.87, 208.30, 4, 1)
			MovementLoopAddLocation(NPC, -393.45, -62.87, 201.45, 4, 1)
			MovementLoopAddLocation(NPC, -396.49, -62.87, 208.28, 4, 1)
			MovementLoopAddLocation(NPC, -387.72, -62.87, 200.97, 4, 1)
			MovementLoopAddLocation(NPC, -396.54, -62.87, 204.25, 4, 1)
			MovementLoopAddLocation(NPC, -388.66, -62.87, 205.30, 4, 1)
			MovementLoopAddLocation(NPC, -400.58, -62.87, 210.81, 4, 1)
			MovementLoopAddLocation(NPC, -395.15, -62.87, 205.69, 4, 1)	
		else
			RemoveSpawnAccess(NPC, Player)
    end
end

function animation(NPC, Player)
	AddSpawnAccess(NPC, Player)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0)
	
end