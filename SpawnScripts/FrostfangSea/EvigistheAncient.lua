--[[
	Script Name		:	SpawnScripts/FrostfangSea/EvigistheAncient.lua
	Script Purpose	:	for the spawn Evigis the Ancient
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	
--]]

local NapEvigis = 64

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Gerla's Elemental Lullaby" then
		KillSpawn(NPC, Spawn, 1)
	    SetStepComplete(Spawn, NapEvigis, 1)
	end
end