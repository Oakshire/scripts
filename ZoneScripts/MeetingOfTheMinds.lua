--[[
	Script Name		:	ZoneScripts/MeetingOfTheMinds.lua
	Script Purpose	:	Handles events in Meeting of the Minds: Epic
	Script Author	:	Neveruary
	Script Date		:	10/14/21
	Script Notes	:	Removes access to spawns that are revealed during the Pzwk event.
--]]

function init_zone_script(zone)
end

function player_entry(zone, player)
    RemoveSpawnAccess(GetSpawn(player, 5560004), player)
    RemoveSpawnAccess(GetSpawn(player, 5560005), player)
    RemoveSpawnAccess(GetSpawn(player, 5560006), player)
end

function dawn(zone)
end

function dusk(zone)
end