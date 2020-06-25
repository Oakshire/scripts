--[[
	Script Name		:	SpawnScripts/Nektropos1/aPriestessOfUllkorruuk.lua
	Script Purpose	:	a priestess of Ullkorruuk
	Script Author	:	smash
	Script Date		:	1/28/2016
	Script Notes	:	
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function group_dead(NPC)
	SpawnByLocationID(GetZone(NPC), 1584466)
end