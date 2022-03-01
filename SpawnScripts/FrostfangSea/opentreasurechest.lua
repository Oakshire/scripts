--[[
	Script Name	: SpawnScripts/FrostfangSea/opentreasurechest.lua
	Script Purpose	: treasure chest in Frostfang Sea
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "OpenChest")
end

function respawn(NPC)
	spawn(NPC)
end

function OpenChest(NPC)
	if GetTempVariable(NPC, "open_timer") == nil then
		SetTempVariable(NPC, "open_timer", "1")
		SpawnSet(NPC, "action_state", "11904")
		AddTimer(NPC, 25000, "CloseChest")
	end
end

function CloseChest(NPC)
	SetTempVariable(NPC, "open_timer", nil)
	SpawnSet(NPC, "action_state", "0")
end