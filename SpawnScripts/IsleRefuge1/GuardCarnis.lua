--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardCarnis.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 10:09:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end