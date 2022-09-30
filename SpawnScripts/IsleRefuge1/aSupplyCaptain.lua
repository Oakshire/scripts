--[[
    Script Name    : SpawnScripts/IsleRefuge1/aSupplyCaptain.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.29 12:09:38
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