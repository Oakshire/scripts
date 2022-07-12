--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminer.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:13
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