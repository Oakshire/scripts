--[[
    Script Name    : SpawnScripts/SouthFreeport/ElonaShawnasy.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.20 05:03:05
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