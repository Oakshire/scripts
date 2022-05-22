--[[
	Script Name	: ZoneScripts/Oakmyst.lua
	Script Purpose	: Zone script for Oakmyst Forest
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

-- Rotweed Script needs some love. Spawns everything at once. 2022.01.17
local QUEST_FROM_CHARLIN_4 = 207
local QUEST_FROM_ADALIN = 294
local QUEST_FROM_EMPRESS = 230
local ThistleSpawn = 0 --Indicates if Rotweed Thistles are active. 0 = inactive. 1 = active.

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 964.13, 8.67, -292.63, 40, "InRange")
	SetLocationProximityFunction(Zone, 906.62, 3.33, -209.46, 50, "InRangeAdalinTree1")
	SetLocationProximityFunction(Zone, 934.61, 8.11, -195.52, 50, "InRangeAdalinTree2")
	SetLocationProximityFunction(Zone, 921.71, 3.93, -357.12, 50, "InRangeAdalinTree3")
	SetLocationProximityFunction(Zone, 934.09, 12.28, -171.64, 6, "InRangeRotweed")
end

function LeaveRange(Zone)
end

function InRange(Zone, Spawn)
	if HasQuest(Spawn, QUEST_FROM_CHARLIN_4) and GetQuestStep(Spawn, QUEST_FROM_CHARLIN_4) == 1 then
		Fulkoir = GetSpawn(Spawn, 1950083)
		if Fulkoir == nil then
			Fulkoir = SpawnMob(Zone, 1950083, false, 998.26, 14.15, -239.86, 133)
			Despawn(Fulkoir, 60000)
		end
	end
end

function InRangeAdalinTree1(Zone, Spawn)
	if HasQuest(Spawn, QUEST_FROM_ADALIN) and not QuestStepIsComplete(Spawn, QUEST_FROM_ADALIN, 1) then
		SetStepComplete(Spawn, QUEST_FROM_ADALIN, 1)
	end
end

function InRangeAdalinTree2(Zone, Spawn)
	if HasQuest(Spawn, QUEST_FROM_ADALIN) and not QuestStepIsComplete(Spawn, QUEST_FROM_ADALIN, 2) then
		SetStepComplete(Spawn, QUEST_FROM_ADALIN, 2)
	end
end

function InRangeAdalinTree3(Zone, Spawn)
	if HasQuest(Spawn, QUEST_FROM_ADALIN) and not QuestStepIsComplete(Spawn, QUEST_FROM_ADALIN, 3) then
		SetStepComplete(Spawn, QUEST_FROM_ADALIN, 3)
	end
end

function InRangeRotweed(Zone, Spawn) --Appears to trigger only once.
	if HasQuest(Spawn, QUEST_FROM_EMPRESS) and GetQuestStep(Spawn, QUEST_FROM_EMPRESS) == 1 and ThistleSpawn == 0 then
		local rotweed_thistle = GetSpawn(Zone, 1950028)
--		local rotweed = GetSpawn(Zone, 1950029)
	if rotweed_thistle == nil and rotweed == nil then
        ThistleSpawn = 1
        SpawnByLocationID(Zone, 422456)
        SpawnByLocationID(Zone, 422457)
        SpawnByLocationID(Zone, 422458)
        Attack(rotweed_thistle, Spawn)
		AddTimer(NPC, 10000, "ThistleReset", 1, Spawn)
		end
    end
end

function ThistleReset(Zone,Spawn)
    ThistleSpawn = 0
end







			--RotweedSpawn (Zone, Spawn) --Trigger needs assistance.


