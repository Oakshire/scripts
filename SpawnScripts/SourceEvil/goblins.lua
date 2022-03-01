--[[
	Script Name	:	SpawnScripts/SourceEvil/goblins.lua
	Script Purpose	:	When the three goblins die enable the totems
	Script Author	:	Jabantiz
	Script Date	:	9/10/2016
	Script Notes	:	
--]]

-- Spawn ID for Vith L'Tar
local VithID = 2540005
-- location id's for the 4 totems
local totems = { 475343, 475345, 1584964, 1584965 }

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function group_dead(NPC)
	local zone = GetZone(NPC)
	for index, value in pairs(totems) do
		local totem = GetSpawnByLocationID(zone, value)
		if totem ~= nil then
			SpawnSet(totem, "show_command_icon", "1")
			SpawnSet(totem, "display_hand_icon", "1")
		end
	end
	
	local Vith = GetSpawn(NPC, VithID)
	if Vith ~= nil then
		PlayFlavor(Vith, "", "Haha, you think you can defeat me?  You can't even touch me.", "", 1689589577, 4560189)
	end
end