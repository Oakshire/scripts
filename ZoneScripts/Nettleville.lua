--[[
	Script Name		:	ZoneScripts/Nettleville.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/11/2018
	Script Notes	:	
--]]

local UNFORTUNATE_MISTAKES = 303

function init_zone_script(zone)
	SetLocationProximityFunction(zone, 582.66, -26.54, 375.95, 10, "UnfortunateMistakesTrigger", "Leave")
end

function player_entry(zone, player)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function UnfortunateMistakesTrigger(zone, Spawn)
	if HasQuest(Spawn, UNFORTUNATE_MISTAKES) and GetQuestStep(Spawn, UNFORTUNATE_MISTAKES) == 1 then
		local Ralkesh = GetSpawn(Spawn, 2330065)
		if Ralkesh ~= nil then
			if GetTempVariable(Ralkesh, "Ready") == "true" then
				AddTimer(Ralkesh, 250, "StartRitual")
			end
		end
	end
end

function Leave(zone, Spawn)
end