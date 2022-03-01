--[[
	Script Name		:	ZoneScripts/Sprawl.lua
	Script Purpose	:	Attempt to manage changes to the zone between client version
	Script Author	:	Jabantiz
	Script Date		:	6/18/2018
	Script Notes	:	Screwed up and put the scaleyard script here, so nuked the contents here and leaving an empty shell
    Script Notes II :   Added the proxy to the pois. Not sure if this is how they will work?
--]]

function init_zone_script(zone)
    SetLocationProximityFunction(zone, -87.04, -4.24, 15.54, 15, "DervishSlums", "Leave")  -- Dervish Slums
    SetLocationProximityFunction(zone, 50.41, -2.67, -26.54, 15, "DreadnaughtStompingGroundsr", "Leave")  -- Dreadnaught Stomping Grounds
    SetLocationProximityFunction(zone, 41.45, 4.99, 84.67, 15, "BlackMagiEnclave", "Leave")  -- Black Magi Enclave
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