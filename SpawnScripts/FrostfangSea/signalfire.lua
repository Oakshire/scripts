--[[
	Script Name	: SpawnScripts/FrostfangSea/signalfire.lua
	Script Purpose	: setting signal fire private spawn access
	Script Author	: theFoof
	Script Date	: 2013.5.9
	Script Notes	: 
--]]

local FlameOn = 5

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 75, "CheckQuest", "CheckQuest")
end

function CheckQuest(NPC, Player)
    if HasCompletedQuest(Player, FlameOn) or GetQuestStep(Player, FlameOn) > 1 then 
        AddSpawnAccess(NPC, Player)
    end
end