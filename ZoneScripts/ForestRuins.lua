--[[
	Script Name		:	ZoneScripts/ForestRuins.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/25/2018
	Script Notes	:	
--]]

function init_zone_script(zone)
end

function player_entry(zone, player)
    
	newSpawn = SpawnByLocationID(zone, 475035)
	newSpawn = SpawnByLocationID(zone, 1587510)
	newSpawn = SpawnByLocationID(zone, 1587511)
	newSpawn = SpawnByLocationID(zone, 1587512)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(zone)
	local players = GetPlayersInZone(zone)
	for index, player in ipairs(players) do
		SendPopUpMessage(player, "As dawn breaks, the undead retreat to the shadows as the Blackfurl forces flood the castle.", 255, 0, 0)
		SendMessage(player, "As dawn breaks, the undead retreat to the shadows as the Blackfurl forces flood the castle.")
	end
end

function dusk(zone)
	local players = GetPlayersInZone(zone)
	for index, player in ipairs(players) do
		SendPopUpMessage(player, "As dusk falls, the Blackfurl forces retreat to the beach as the undead crawl from the shadows.", 255, 0, 0)
		SendMessage(player, "As dusk falls, the Blackfurl forces retreat to the beach as the undead crawl from the shadows.")
	end
end