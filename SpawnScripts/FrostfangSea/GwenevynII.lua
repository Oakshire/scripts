--[[
	Script Name	: SpawnScripts/FrostfangSea/GwenevynII.lua
	Script Purpose	: script to move the boat in Frostfang Sea
	Script Author	: theFoof
	Script Date	: 11.19.13
	Script Notes	:
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	SpawnSet(NPC, "activity_state", "64")
	AddTimer(NPC, 85000, "UseLift")
end

function respawn(NPC)
	spawn(NPC)
end

function UseLift(NPC)
	UseWidget(NPC)
	AddTimer(NPC, 85000, "UseLift")
end