--[[
	Script Name		:	antonica.lua
	Script Purpose	:	Handles events in Antonica
	Script Author	:	Jabantiz/neatz09
	Script Date		:	6/16/2016/ 2/23/19
	Script Notes	:	
--]]

function init_zone_script(zone)
	SetLocationProximityFunction(zone, -2128.93, -28.4328, 614.081, 10, "GriffonTower", "Leave")  -- Steppes from Qeynos
	SetLocationProximityFunction(zone, -904.472, -7.23051, -610.321, 10, "GriffonTower", "Leave")  -- Oracle from Qeynos
	SetLocationProximityFunction(zone, 337.246, -17.3142, 537.882, 10, "GriffonTower", "Leave")  -- Qeynos from Steppes
    SetLocationProximityFunction(zone, -912.659, -7.21881, -599.911, 10, "GriffonTower", "Leave")  -- Oracle from Steppes
	SetLocationProximityFunction(zone, 327.727, -17.3058, 529.95, 10, "GriffonTower", "Leave")  -- Qeynos from Oracle
	SetLocationProximityFunction(zone, -2136.6, -28.5276, 608.087, 10, "GriffonTower", "Leave")  -- Steppese from oracle
end

function player_entry(zone, player)
 SendPopUpMessage(player, "Antonica", 230, 230, 230)   
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

function GriffonTower(zone, Spawn)
	if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
		EndAutoMount(Spawn)
	end
end

function Leave(zone, Spawn)
end