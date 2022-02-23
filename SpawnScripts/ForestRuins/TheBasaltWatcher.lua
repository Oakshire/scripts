--[[
    Script Name    : SpawnScripts/ForestRuins/TheBasaltWatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.23 04:02:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    if clock(NPC,Zone)==6 and clock(NPC,Zone) ==30 then
    wakeup(NPC)
    end
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function wakeup(NPC)
SpawnSet(NPC, "attackable", "1")
SpawnSet(NPC, "show_level", "1")
SpawnSet(NPC, "faction", "1")
	local players = GetPlayersInZone(zone)
	for index, player in ipairs(players) do
		SendPopUpMessage(player, "Loud creaking can be heard as something ancient stirs in the ruins.", 255, 0, 0)
		SendMessage(player, "Loud creaking can be heard as something ancient stirs in the ruins.")
	end
end