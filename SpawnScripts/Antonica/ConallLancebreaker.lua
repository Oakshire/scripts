--[[
    Script Name    : SpawnScripts/Antonica/ConallLancebreaker.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 08:08:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "drinking_idle")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "Grab an ale, me friend!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "I should be gettin' back to me wife, before she comes callin' after me... again.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Hail, right back at ya.", "",  1689589577, 4560189, Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end