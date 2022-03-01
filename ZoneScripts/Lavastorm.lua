--[[
    Script Name       :   ZoneScripts/Lavastorm.lua
    Script Purpose    :   
    Script Author     :   vo1d
    Script Date       :   10/29/2019
    Script Notes      :    
--]]

-- QuestIDs
local ADeepiceMystery = 486

-- SpawnIDs
local ALivingBlaze = 1710369

function player_entry(zone, player)
    if HasQuest(player, ADeepiceMystery) and GetQuestStep(player, ADeepiceMystery) == 1 then
        SetLocationProximityFunction(zone, -236, -128, 488, 60, "InRangeADeepiceMystery", "OutRange")
    end
end

function InRangeADeepiceMystery(Zone, Spawn)
	if HasQuest(Spawn, ADeepiceMystery) and GetQuestStep(Spawn, ADeepiceMystery) == 1 then
		if GetSpawn(Spawn, ALivingBlaze) == nil then
			choice = math.random(1, 2)
			if choice == 1 then
				SpawnByLocationID(GetZone(Spawn), 1586700)
				SpawnByLocationID(GetZone(Spawn), 1586701)
			elseif choice == 2 then
				SpawnByLocationID(GetZone(Spawn), 1586702)
				SpawnByLocationID(GetZone(Spawn), 1586703)
			end
		end
	end
end



function init_zone_script(zone)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function InRange(zone, player)
end

function OutRange(zone, player)
end