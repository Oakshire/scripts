--[[
    Script Name    : SpawnScripts/qeynos_combined02/anelddarsteed.lua
    Script Author  : Rylec
    Script Date    : 2021.09.24 11:09:59
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