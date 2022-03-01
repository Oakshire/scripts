--[[
    Script Name    : SpawnScripts/CoveofDecay/RognogtheAnglerx4.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.01 05:03:39
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