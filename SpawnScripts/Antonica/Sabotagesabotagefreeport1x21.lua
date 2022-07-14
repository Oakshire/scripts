--[[
    Script Name    : SpawnScripts/Antonica/Sabotagesabotagefreeport1x21.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 07:07:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 1, 1,0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end