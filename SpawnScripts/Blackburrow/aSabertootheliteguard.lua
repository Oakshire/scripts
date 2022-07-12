--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertootheliteguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 07:07:40
    Script Purpose : 
                   : 
--]]
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end