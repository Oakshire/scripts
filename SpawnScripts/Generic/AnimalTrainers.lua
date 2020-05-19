--[[
	Script Name	: SpawnScripts/Generic/AnimalTrainers.lua 
	Script Purpose	: Generic script to make animal trainers emote to their animals
	Script Author	: John Adams
	Script Date	: 2009.06.14
	Script Notes	: 
--]]

function spawn(NPC)
	AddTimer(NPC, 5000, "emote1")
end

function emote1(NPC)
	SpawnSet(NPC, "visual_state", "12187")
	AddTimer(NPC, 5000, "Stop")
	AddTimer(NPC, 30000, "emote2")
end

function emote2(NPC)
	SpawnSet(NPC, "visual_state", "11298")
	AddTimer(NPC, 10000, "Stop")
	AddTimer(NPC, 30000, "emote3")
end

function emote3(NPC)
	SpawnSet(NPC, "visual_state", "11150")
	AddTimer(NPC, 5000, "Stop")
	AddTimer(NPC, 30000, "emote4")
end

function emote4(NPC)
	SpawnSet(NPC, "visual_state", "13063")
	AddTimer(NPC, 5000, "Stop")
	AddTimer(NPC, 30000, "emote5")
end

function emote5(NPC)
	SpawnSet(NPC, "visual_state", "2810")
	AddTimer(NPC, 5000, "Stop")
	AddTimer(NPC, 30000, "emote1")
end

function Stop(NPC)
	SpawnSet(NPC, "visual_state", "0")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
