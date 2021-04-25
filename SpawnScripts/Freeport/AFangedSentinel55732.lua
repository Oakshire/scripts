--[[
    Script Name    : SpawnScripts/Freeport/AFangedSentinel55732.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 06:04:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SpawnSet(NPC, "visual_state", 540)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
SpawnSet(NPC, "visual_state", 0)  
end