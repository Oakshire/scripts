--[[
    Script Name    : SpawnScripts/qeynos_combined02/BreenoMesspie.lua
    Script Author  : Rylec
    Script Date    : 2021.09.08 10:09:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10893")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end