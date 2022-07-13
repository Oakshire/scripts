--[[
    Script Name    : SpawnScripts/BigBend/Rubbish.lua
    Script Author  : torsten
    Script Date    : 2022.07.13 09:07:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC, 5632, 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end