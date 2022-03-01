--[[
    Script Name    : SpawnScripts/ShatteredVale3/aWindstalkergrizzly.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.24 09:08:50
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
AddSpawnAccess(NPC, NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function Start_Bear_Timer(NPC, Spawn)
RemoveSpawnAccess(NPC, Spawn)
AddTimer(NPC, 60000, "show_bear", 1, Spawn)
end

function show_bear(NPC, Spawn)
AddSpawnAccess(NPC, Spawn)
SpawnSet(NPC, "faction", 1)
end


function respawn(NPC)
	spawn(NPC)
end