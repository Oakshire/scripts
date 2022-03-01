--[[
    Script Name    : SpawnScripts/BeggarsCourt2/abarbariancitizen2.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.04 03:09:59
    Script Purpose : 
                   : 
--]]

local QUEST = 579

function spawn(NPC)
AddSpawnAccess(NPC, NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "OutRange")
SpawnSet(NPC, "hair_type", 1137)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
AddSpawnAccess(NPC, Spawn)
if not HasQuest(Spawn, QUEST) or GetQuestStep(Spawn, QUEST) == 5 or GetQuestStep(Spawn, QUEST) == 6 or GetQuestStep(Spawn, QUEST) == 1  then
RemoveSpawnAccess(NPC, Spawn)
end
  end

function OutRange(NPC, Spawn)

end