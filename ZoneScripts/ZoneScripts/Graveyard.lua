--[[
	Script Name	: ZoneScripts/Graveyard.lua
	Script Purpose	: Zone script for The Graveyard.
	Script Author	: Scatman
	Script Date	: 2009.07.12
	Script Notes	: 
--]]

local ZADDAR_QUEST_4 = 234

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 57.9408, -2.75514, 98.808, 50, "SpawnObjectsForZaddarQuest4", "SpawnObjectsForZaddarQuest4")
end

function SpawnObjectsForZaddarQuest4(Zone, Spawn)
	if HasQuest(Spawn, ZADDAR_QUEST_4) then
		if GetQuestStep(Spawn, ZADDAR_QUEST_4) == 2 then
			WardParticle = GetSpawn(Caster, 1250125)
			if WardParticle == nil then
				WardParticle = SpawnMob(GetZone(Caster), 1250125, false, 58.588, -2.72359, 98.4903, 339.984)
				Despawn(WardParticle, 30000)
			end
		elseif GetQuestStep(Spawn, ZADDAR_QUEST_4) == 3 then
			Relic = GetSpawn(Caster, 1250107)
			if Relic == nil then
				Relic = SpawnMob(GetZone(Caster), 1250107, false, 57.9408, -2.75514, 98.8084, 339.984)
				Despawn(Relic, 30000)
			end
		end
	end
end