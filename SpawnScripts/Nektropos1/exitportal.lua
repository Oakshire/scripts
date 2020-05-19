--[[
    Script Name    : SpawnScripts/Nektropos1/exitportal.lua
    Script Author  : smash
    Script Date    : 2018.06.09 02:06:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetSpawnAnimation(NPC, 13016, 10000)
    SpawnSet(NPC, "activity_state", "2176")
end