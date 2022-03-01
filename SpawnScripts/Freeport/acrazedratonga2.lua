--[[
    Script Name    : SpawnScripts/Freeport/acrazedratonga.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.23 09:08:28
    Script Purpose : 
                   : 
--]]

QUEST = 576

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
        AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
local PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
SpawnSet(NPC, "model_type", 70)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 5 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
end
   end

function group_dead(NPC, Spawn)
SetStepComplete(Spawn, QUEST, 5)
end

function LeaveRange(NPC, Spawn)

end