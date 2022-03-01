--[[
    Script Name    : SpawnScripts/Darklight/ascarwurm.lua
    Script Author  : Foof
    Script Date    : 2013.11.17
    Script Purpose : 
--]]

require"SpawnScripts/Generic/generic_fish_movement"

function spawn(NPC)
	local choice = math.random(1,2)
	if choice == 1 then
		SpawnSet(NPC, "model_type", "197")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end