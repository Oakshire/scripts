--[[
	Script Name	: SpawnScripts/FrostfangSea/QstRedbladeX3RevampBarricade.lua
	Script Purpose	: handles the barricade spawn on Pilgrims' Landing
	Script Author	: theFoof
	Script Date	: 2013.5.6
	Script Notes	:
--]]

local BoatloadWork = 4

function spawn(NPC, Player)
    SpawnSet(NPC, "activity_state", "0")
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "CheckQuest", "CheckQuest")
	if HasCompletedQuest(Player, BoatloadWork) or GetQuestStep(Player, BoatloadWork) == 4 then
	    AddSpawnAccess(NPC, Player)
	end
end

function respawn(NPC)
    spawn(NPC)
end

function CheckQuest(NPC, Player)
    if HasCompletedQuest(Player, BoatloadWork) or GetQuestStep(Player, BoatloadWork) == 4 then
	    AddSpawnAccess(NPC, Player)
	end
end