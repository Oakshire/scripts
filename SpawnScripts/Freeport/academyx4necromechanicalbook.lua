--[[
    Script Name    : SpawnScripts/Freeport/academyx4necromechanicalbook.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.15 06:08:37
    Script Purpose : 
                   : 
--]]

local QUEST = 574

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end


function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 3 then
		AddSpawnAccess(NPC, Spawn)
	end
end