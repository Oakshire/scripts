--[[
    Script Name    : SpawnScripts/ThunderingSteppes/MerchantAmhurst.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 02:06:23
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