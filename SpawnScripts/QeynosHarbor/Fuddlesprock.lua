--[[
    Script Name    : SpawnScripts/QeynosHarbor/Fuddlesprock.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.15 08:06:53
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericMerchantHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end