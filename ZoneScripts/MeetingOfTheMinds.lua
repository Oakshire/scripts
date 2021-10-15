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
    local braxx = GetSpawnByLocationID(zone, 302036)
    local brixx = GetSpawnByLocationID(zone, 302037)
    local borxx = GetSpawnByLocationID(zone, 302038)
    RemoveSpawnAccess(braxx, player)
    RemoveSpawnAccess(brixx, player)
    RemoveSpawnAccess(borxx, player)
end

function dawn(zone)
end

function dusk(zone)
end