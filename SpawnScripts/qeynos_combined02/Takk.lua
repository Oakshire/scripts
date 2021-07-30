--[[
    Script Name    : SpawnScripts/qeynos_combined02/Takk.lua
    Script Author  : Rylec
    Script Date    : 2021.07.29 03:07:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
	Say(NPC, "This is a good spot for meditation, and for listening to the spirits speak.")
end

function respawn(NPC)
	spawn(NPC)
end