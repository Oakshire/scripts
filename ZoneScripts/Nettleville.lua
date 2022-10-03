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
--	SetLocationProximityFunction(zone, 640.16, -24.67, 383.95, 30, "MarketRow","LeaveLocation")
end

function player_entry(zone, player)
SendPopUpMessage(player, "Nettleville Hovel", 230, 230, 230)   
end

function enter_location(zone, spawn, grid)
--	if grid == 342305820 then
--		SendPopUpMessage(Player, "Nettleville Market Row", 255, 255, 0)
--	end
--	SetLocationProximityFunction(zone, 640.16, -24.67, 383.95, 30, "MarketRow","LeaveLocation")
end

function MarketRow(Zone,Player)
      SendPopUpMessage(Player, "Nettleville Market Row", 255, 255, 0)
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