--[[
	Script Name		:	SpawnScripts/CaveofIllbodingDark/OrugDeathmaker.lua
	Script Purpose	:	for the spawn "Orug Deathmaker"
	Script Author	:	theFoof
	Script Date		:	2013.6.19
	Script Notes	:	
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "Warning")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function Warning(NPC)
	PlayFlavor(NPC, "", "You dare to meddle with Orug Deathmaker?  You will fall here!", "", 1689589577, 4560189)
end

