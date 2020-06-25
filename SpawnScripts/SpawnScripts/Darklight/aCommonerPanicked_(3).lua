--[[
	Script Name		:	SpawnScripts/Darklight/aCommonerPanicked_(3).lua
	Script Purpose	:	Panicked commoners before completing quest, "Reclaiming the Sablevein Tear"
	Script Author	:	Cynnar
	Script Date		:	10/15/2015
	Script Notes	:	a commoner (spawn_id 340142) (spawn_location_id 584437, 584438)
	Script Notes	:	Location is in Hate's Envy
--]]

local SealingTheRift = 122
local ReclaimingTheSableveinTear = 124

function spawn(NPC, Player)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 990, "QuestCheck", "QuestCheck")
end

function respawn(NPC)
	spawn(NPC)
end

function QuestCheck(NPC, Player)
	if HasCompletedQuest(Player, SealingTheRift) then
		if not HasCompletedQuest(Player, ReclaimingTheSableveinTear) then
			AddSpawnAccess(NPC, Player)
			AddTimer(NPC, 2000, "kickrubble")
		else
			RemoveSpawnAccess(NPC, Player)
		end
	end
end

function kickrubble(NPC)
	PlayFlavor(NPC, "", "", "kick", 0, 0)
	AddTimer(NPC, 2000, "kickrubble")
end
