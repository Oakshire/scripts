--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothcommander.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 07:07:45
    Script Purpose : 
                   : 
--]]
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end