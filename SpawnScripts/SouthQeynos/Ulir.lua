--[[
    Script Name    : SpawnScripts/SouthQeynos/Ulir.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.12 01:06:14
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end