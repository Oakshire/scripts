--[[
    Script Name    : SpawnScripts/Commonlands/aMilitiaGuard.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.30 08:05:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetAggroRadius(NPC, 20)
 AddTimer(NPC, 180000, "despawn", 1)
end

function despawn(NPC, Spawn)
Despawn(NPC)
end 

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end