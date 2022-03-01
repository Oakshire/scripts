--[[
	Script Name		:	FrostfangSea/SpawnScripts/aRyGorrtunneler.lua
	Script Purpose	:	Ry'Gorr tunnelers
	Script Author	:	theFoof
	Script Date		:	2013.7.24
	Script Notes	:	
--]]

local BecomingOrcbane = 81

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "cadaver's dram" then
		if GetQuestStep(Spawn, BecomingOrcbane) == 1 then
			AddStepProgress(Spawn, BecomingOrcbane, 1, 1)
			KillSpawn(NPC, Spawn, 1)
		end
	end
end