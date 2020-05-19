--[[
	Script Name		:	ZoneScripts/Sprawl.lua
	Script Purpose	:	Attempt to manage changes to the zone between client version
	Script Author	:	Jabantiz
	Script Date		:	6/18/2018
	Script Notes	:	This will hide the pink cubes in clients greater then 1096 as well as show any replacements we manage to make
--]]

-- Spawn ID's of old widgets/signs that work in 1096 but not newer clients
local old_spawns = { 1390076, 1390073, 1390074, 1390071, 1390072, 1390069, 1390070 }

function init_zone_script(zone)
end

function player_entry(zone, player)
	local version = GetClientVersion(player)
	
	if version > 1096 then	
		local spawn = GetSpawn(player, 1390124)
		if spawn ~= nil then
			AddSpawnAccess(spawn, Player)
		end
	else
		for index, id in ipairs(old_spawns) do
			local spawn2 = GetSpawn(player, id)
			if spawn ~= nil then
				AddSpawnAccess(spawn, Player)
			end
		end
	end
	
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
end

function dusk(zone)
end

--[[

Inner door of the bank for 1208+

970376927
	84.02222
	-2.783144
	-34.46384
	
]]