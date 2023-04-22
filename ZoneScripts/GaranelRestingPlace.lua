--[[
    Script Name    : ZoneScripts/GaranelRestingPlace.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 12:04:14
    Script Purpose : 
                   : 
--]]

local TheseBootsWereMadeFor = 5805 -- These Boots Were Made For QUEST ID
local theGhostofGaranelRucksifID = 133784536

function init_zone_script(Zone)

end

function player_entry(Zone, Player)
if HasQuest(Player, TheseBootsWereMadeFor) then
zone = GetZone(Player)
	SpawnGaranelRucksif = SpawnByLocationID(zone, theGhostofGaranelRucksifID)
    end
end

