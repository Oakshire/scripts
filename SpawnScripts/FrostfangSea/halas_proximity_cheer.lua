--[[
	Script Name		:	SpawnScripts/FrostfangSea/halas_proximity_cheer.lua
	Script Purpose	:	makes npcs cheer when player gets in proximity
	Script Author	:	theFoof
	Script Date		:	2013.9.26
	Script Notes	:	
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "ProxCheer")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
end

function ProxCheer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTempVariable(NPC, "cheer_timer") == nil then
		PlayFlavor(NPC, "", "", "cheer", 0, 0)
		SetTempVariable(NPC, "cheer_timer", "1")
		AddTimer(NPC, 15000, "CheerTimer")
	end
end

function CheerTimer(NPC)
	SetTempVariable(NPC, "cheer_timer", nil)
end