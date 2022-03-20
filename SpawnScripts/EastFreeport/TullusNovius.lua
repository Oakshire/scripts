--[[
    Script Name    : SpawnScripts/EastFreeport/TullusNovius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.16 09:03:33
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