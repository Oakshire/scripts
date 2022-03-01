--[[
    Script Name    : SpawnScripts/SerpentSewer/SkeletonofGordSmith.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 08:07:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 4000, "attack_spawn", 1, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function prespawn(NPC)
SetSpawnAnimation(NPC, 13016)
end

function attack_spawn(NPC, Spawn)
Attack(NPC, Spawn)
end