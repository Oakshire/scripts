--[[
	Script Name		:	SpawnScripts/FrostfangSea/widget_scourgeson_x2_orc_provisions.lua
	Script Purpose	:	for the orc provisions
	Script Author	:	theFoof
	Script Date		:   2013.6.24
	Script Notes	:	
--]]

local CampsideSpores = 75

function spawn(NPC)
	SetRequiredQuest(NPC, CampsideSpores, 1)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "apply the crustose spores" then
		if GetQuestStep(Spawn, CampsideSpores) == 1 then
			AddStepProgress(Spawn, CampsideSpores, 1, 1)
			local X = GetX(NPC)
			local Y = GetY(NPC)
			local Z = GetZ(NPC)
			local zone = GetZone(NPC)
			local shroom1 = SpawnMob(zone, 4700408, 1, X + math.random(-5,5), Y, Z + math.random(-5,5), math.random(0,360))
			SpawnSet(shroom1, "attackable", "0")
			SpawnSet(shroom1, "show_level", "0")
			AddTimer(shroom1, 25000, "Despawn")
			local shroom2 = SpawnMob(zone, 4700019, 1, X + math.random(-5,5), Y, Z + math.random(-5,5), math.random(0,360))
			SpawnSet(shroom2, "attackable", "0")
			SpawnSet(shroom2, "show_level", "0")
			AddTimer(shroom2, 25000, "Despawn")
			local orc = SpawnMob(zone, 4701172, 0, X + math.random(-10,10), Y, Z + math.random(-10,10), math.random(0,360))
			Attack(orc, Spawn)
			AddSpawnAccess(shroom1, Spawn)
			AddSpawnAccess(shroom2, Spawn)
		end
	end
end