--[[
    Script Name    : SpawnScripts/Darklight/aTRethirthinblood.lua
    Script Author  : theFoof
    Script Date    : 2013.11.27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local choice = math.random(1,2)
	if choice == 1 then
		SpawnSet(NPC, "model_type", "8657")
		SpawnSet(NPC, "gender", "0")
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end