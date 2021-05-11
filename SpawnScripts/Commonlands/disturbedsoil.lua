--[[
    Script Name    : SpawnScripts/Commonlands/disturbedsoil.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.10 07:05:23
    Script Purpose : 
                   : 
--]]

local QUEST = 410 -- Gift from Earth 


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end


function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 2 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
	end
end
  


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end