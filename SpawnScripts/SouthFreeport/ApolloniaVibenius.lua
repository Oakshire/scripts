--[[
    Script Name    : SpawnScripts/SouthFreeport/ApolloniaVibenius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 03:03:32
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcology2Hail(NPC, Spawn, faction)
end

function respawn(NPC)
	spawn(NPC)
end