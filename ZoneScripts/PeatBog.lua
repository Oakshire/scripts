--[[
	Script Name	: ZoneScripts/PeatBog.lua
	Script Purpose	: Peat Bog
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	: 
--]]

local QUEST_4 = 218
local QUEST_5 = 219

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 688.815, -34.2423, 600.400, 30, "InRange1")
	SetLocationProximityFunction(Zone, 753.824, -32.7236, 604.844, 30, "InRange2")
	SetLocationProximityFunction(Zone, 797.389, -32.9127, 580.472, 30, "InRange3")
	SetLocationProximityFunction(Zone, 772.80, -33.68, 489.37, 30, "SpawnDentfang")
end

function InRange1(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 1) then
		local Box = SpawnMob(Zone, 1980131, false, 688.815, -34.2423, 600.400)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end

function InRange2(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 2) then
		local Box = SpawnMob(Zone, 1980131, false, 753.824, -32.7236, 604.844)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end

function InRange3(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 3) then
		local Box = SpawnMob(Zone, 1980131, false, 797.389, -32.9127, 580.472)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end

function GetRandomGnollID()
	-- a gnoll guard: 1980111, 1980118
	-- a gnoll machinist: 1980112
	-- a machinist assistant: 1980113, 1980120
	choice = math.random(1, 5)
	if choice == 1 then
		return 1980111
	elseif choice == 2 then
		return 1980118
	elseif choice == 3 then
		return 1980112
	elseif choice == 4 then
		return 1980113
	elseif choice == 5 then
		return 1980120
	end
end

function SpawnGnolls(Zone, Spawn)
	local Gnoll1 = SpawnMob(Zone, GetRandomGnollID(), false, GetX(Spawn), GetY(Spawn), GetZ(Spawn))
	local Gnoll2 = SpawnMob(Zone, GetRandomGnollID(), false, GetX(Spawn), GetY(Spawn), GetZ(Spawn))
	local Gnoll3 = SpawnMob(Zone, GetRandomGnollID(), false, GetX(Spawn), GetY(Spawn), GetZ(Spawn))
	AddHate(Spawn, Gnoll1, 100)
	AddHate(Spawn, Gnoll2, 100)
	AddHate(Spawn, Gnoll3, 100)
end

function SpawnDentfang(Zone, Spawn)
	if HasQuest(Spawn, QUEST_5) and GetQuestStep(Spawn, QUEST_5) == 1 then
		-- Overseer Dentfang: 1980127
		-- a gnoll conspirator: 1980126
		-- a gnoll conspirator: 1980124
		-- a gnoll conspirator: 1980125
		if GetSpawn(Spawn, 1980127) == nil then
			SpawnMob(Zone, 1980127, false, 785.003, -33.8173, 486.281, 339.984)
		end
		if GetSpawn(Spawn, 1980126) == nil then
			SpawnMob(Zone, 1980126, false, 786.260, -33.7061, 482.401, 160)
		end
		if GetSpawn(Spawn, 1980124) == nil then
			SpawnMob(Zone, 1980124, false, 782.728, -33.6797, 483.157, 219.984)
		end
		if GetSpawn(Spawn, 1980125) == nil then
			SpawnMob(Zone, 1980125, false, 789.354, -33.5120, 484.623, 110.016)
		end
	end
end