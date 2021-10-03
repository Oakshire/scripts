--[[
    Script Name    : SpawnScripts/qeynos_combined02/BreenoMesspieTest.lua
    Script Author  : Rylec
    Script Date    : 2021.10.03 10:10:51
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