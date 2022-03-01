--[[
	Script Name		:	ZoneScripts/ButcherblockMountains.lua
	Script Purpose	:	
	Script Author	:	Neatz09
	Script Date		:	12/23/2019
	Script Notes	:	missing zoned locations/quest locations
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, -965.158, 116.152, -437.831, 10, "GriffonTower", "Leave")   -- Gfay (from Docks) 241
    SetLocationProximityFunction(zone, 320.19, 202.7, 490.52, 10, "GriffonTower", "Leave") -- Highland (from Docks) 238
    SetLocationProximityFunction(zone, -617.429, 115.498, 332.803, 10, "GriffonTower", "Leave") -- Lfay (from Docks) 242
    SetLocationProximityFunction(zone, 755.911, 26.4051, 566.04, 10, "GriffonTower", "Leave") -- Docks (from GFay) 231
    SetLocationProximityFunction(zone, 320.901, 202.691, 481.328, 10, "GriffonTower", "Leave")   -- Highland (from Gfay) 232
    SetLocationProximityFunction(zone, -617.429, 115.498, 332.803, 10, "GriffonTower", "Leave") -- LFay (from GFay) 243
	SetLocationProximityFunction(zone, 754.54, 25.92, 566.87, 10, "GriffonTower", "Leave") -- Docks (from Highland) 228
	SetLocationProximityFunction(zone, 754.54, 25.92, 566.87, 10, "GriffonTower", "Leave") -- Docks (from LFay) 240
	SetLocationProximityFunction(zone, -965.158, 116.152, -437.831, 10, "GriffonTower", "Leave") -- GFay(from LFay) 239
	SetLocationProximityFunction(zone, 322.225, 202.947, 482.792, 10, "GriffonTower", "Leave") -- Highland (from Lfay) 233
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