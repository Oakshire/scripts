--[[
    Script Name    : SpawnScripts/SouthFreeport/Pavel.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 02:03:21
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcologyHail(NPC, Spawn, faction)
end

function respawn(NPC)
	spawn(NPC)
end