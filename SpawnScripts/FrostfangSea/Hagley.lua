--[[
	Script Name		:	SpawnScripts/FrostfangSea/Hagley.lua
	Script Purpose	:	Hagley
	Script Author	:	theFoof
	Script Date		:	2013.10.23
	Script Notes	:	
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 15, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function InRange(NPC, Spawn)
	if GetTempVariable(NPC, "bark_timer") == nil then
		PlayFlavor(NPC, "", "", "attack", 1689589577, 4560189)
		Emote(NPC, "snarls and barks warningly.")
		SetTempVariable(NPC, "bark_timer", "1")
		AddTimer(NPC, 25000, "BarkTimer")
	end
end

function BarkTimer(NPC)
	SetTempVariable(NPC, "bark_timer", nil)
end