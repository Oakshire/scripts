--[[
	Script Name		:	ZoneScripts/TimorousDeep.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	12/22/2019
	Script Notes	:	Missing the zoned auto-mount locations, will come back at a later date to add them in.
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, 781.24, 174.20, 156.84, 10, "GriffonTower", "Leave")   -- Island (from Gorowyn) 201
    SetLocationProximityFunction(zone, 2345.09, 6.79, 1405.84, 10, "GriffonTower", "Leave") -- Docks (from Gorowyn) 207
    SetLocationProximityFunction(zone, 1842.53, 68.11, -316.48, 10, "GriffonTower", "Leave") -- Mok Rent (from Gorowyn) 200
    SetLocationProximityFunction(zone, 778.55, 174.82, 156.27, 10, "GriffonTower", "Leave") -- Island (from Village) 210
    SetLocationProximityFunction(zone, 2345.89, 7.21, 1404.56, 10, "GriffonTower", "Leave")   -- Docks (from Village) 222
    SetLocationProximityFunction(zone, 780.78, 174.05, 155.76, 10, "GriffonTower", "Leave") -- Island (from Mok Rent) 202
	SetLocationProximityFunction(zone, 2291.51, 45.08, 970.56, 10, "GriffonTower", "Leave") -- Gorowyn (from Mok Rent) 199
	SetLocationProximityFunction(zone, -256, 13.71, 77.91, 10, "GriffonTower", "Leave") -- Village (from Docks) 206
	SetLocationProximityFunction(zone, 2285.17, 45.08, 975.26, 10, "GriffonTower", "Leave") -- Gorowyn (from Docks) 208
	SetLocationProximityFunction(zone, -254.82, 13.17, 77.23, 10, "GriffonTower", "Leave") -- Village (from Island) 209
	SetLocationProximityFunction(zone, 2291.66, 45.08, 969.63, 10, "GriffonTower", "Leave") -- Gorowyn (from Island) 195
	SetLocationProximityFunction(zone, 1843.57, 68.11, -316.72, 10, "GriffonTower", "Leave") -- Mok Rent (from Island) 211
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

function GriffonTower(zone, Spawn)
    if IsPlayer(Spawn) and IsOnAutoMount(Spawn) then
        EndAutoMount(Spawn)
     end
end

function Leave(zone, Spawn)
end