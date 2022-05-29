--[[
	Script Name	: ZoneScripts/PeatBog.lua
	Script Purpose	: Peat Bog
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	: 
--]]

local QUEST_4 = 510
local QUEST_5 = 511
local SunDog = 5559

function init_zone_script(Zone)
--	SetLocationProximityFunction(Zone, 688.815, -34.2423, 600.400, 30, "InRange1")  DISABLED SINCE OBJECT ACTION REPLACED THE NEED FOR THESE.
--	SetLocationProximityFunction(Zone, 753.824, -32.7236, 604.844, 30, "InRange2")
--	SetLocationProximityFunction(Zone, 797.389, -32.9127, 580.472, 30, "InRange3")
	SetLocationProximityFunction(Zone, 772.80, -33.68, 489.37, 17, "SpawnDentfang")
--	PlagueBringers(Zone,Spawn)
end

function InRange1(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 1) then
		local Box = SpawnMob(Zone, 1980091, false, 688.815, -34.2423, 600.400)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end

function InRange2(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 2) then
		local Box = SpawnMob(Zone, 1980091, false, 753.824, -32.7236, 604.844)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end

function InRange3(Zone, Spawn)
	if HasQuest(Spawn, QUEST_4) and not QuestStepIsComplete(Spawn, QUEST_4, 3) then
		local Box = SpawnMob(Zone, 1980091, false, 797.389, -32.9127, 580.472)
		SpawnGnolls(Zone, Spawn)
		Despawn(Box, 120000)
	end
end


function GetRandomGnollID()
	-- a gnoll guard: 1980064
	-- a gnoll machinist: 1980065, 1980062
	-- a machinist assistant: 1980066
	choice = math.random(1, 4)
	if choice == 1 then
		return 1980064
	elseif choice == 2 then
		return 1980065
	elseif choice == 3 then
		return 1980062
	elseif choice == 4 then
		return 1980066

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
		-- Overseer Dentfang: 1980127   --1980070 actual
		-- a gnoll conspirator: 1980126 --1980068 actual
		-- a gnoll conspirator: 1980124 --1980067 actual
		-- a gnoll conspirator: 1980125 --1980069 actual
		if SpawnByLocationID(Zone, 329637) == nil then
		        SpawnByLocationID(Zone,329637)
		--	SpawnMob(Zone, 1980070, false, 785.003, -33.8173, 486.281, 339.984)
		end
		if SpawnByLocationID(Zone, 329633) == nil then
			--SpawnMob(Zone, 1980068, false, 786.260, -33.7061, 482.401, 160)
			SpawnByLocationID(Zone,329633)
		end
		if GetSpawnLocationID(Zone, 329632) == nil then
		--	SpawnMob(Zone, 1980067, false, 782.728, -33.6797, 483.157, 219.984)
			SpawnByLocationID(Zone,329632)
		end
		if GetSpawnLocationID(Zone, 329636) == nil then
		--	SpawnMob(Zone, 1980069, false, 789.354, -33.5120, 484.623, 110.016)
			SpawnByLocationID(Zone,329636)
		end
	end
end
 
    