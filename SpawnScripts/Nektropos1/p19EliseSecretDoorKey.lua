--[[
    Script Name    : SpawnScripts/Nektropos1/p19EliseSecretDoorKey.lua
    Script Author  : smash
    Script Date    : 2016.01.28 04:01:06
    Script Purpose : the spawns that allow access to secret doors in the castle
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"

function spawn(NPC)
	SetRequiredHistory(NPC, HISTORY.NEK_CASTLE_SCONCE_KEY_ACCESS, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_SCONCE_KEY_ACCESS, 0)
	SetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_SCONCE_ACCESS, 1)
	SendMessage(Spawn, "You find a note hidden behind the cue rack.")
	SummonItem(Spawn, 1896, 1)
end