--[[
    Script Name    : SpawnScripts/SouthFreeport/GlyconDuronius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 11:03:13
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