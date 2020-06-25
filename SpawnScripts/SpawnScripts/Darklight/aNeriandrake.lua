--[[
    Script Name    : SpawnScripts/Darklight/aNeriandrake.lua
    Script Author  : theFoof
    Script Date    : 2013.11.28 
    Script Purpose : this is only for the drakes that fly
                   : 
--]]

function spawn(NPC)
	SpawnSet(NPC, "action_state", "11559")
	--Add movement script to this
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end