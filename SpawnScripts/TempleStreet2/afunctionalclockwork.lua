--[[
    Script Name    : SpawnScripts/TempleStreet2/afunctionalclockwork.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.16 04:08:07
    Script Purpose : 
                   : 
--]]
local QUEST = 574

function spawn(NPC)
        AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end 




function SpawnAccess(NPC, Spawn)
                if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 5 then
                AddSpawnAccess(NPC, Spawn)
                SetFollowTarget(NPC, Spawn)
                SetSpeed(NPC, 9)
                ToggleFollow(NPC)
                else
                RemoveSpawnAccess(NPC, Spawn)
                end
end
       