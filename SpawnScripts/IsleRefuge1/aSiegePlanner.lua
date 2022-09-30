--[[
    Script Name    : SpawnScripts/IsleRefuge1/aSiegePlanner.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.29 12:09:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin3.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end