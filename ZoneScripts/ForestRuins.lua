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
    
    
   -- Say(player, "Wow! Forest Ruins is so pretty (v3)")
	if  HasQuest(player , 522) then
        Say(player, "You have quest 522")
        newspawn1 = SpawnMob(zone, 1960182, true, 1161.29, -21.6585, -741.387, 0)
        newspawn2 = SpawnMob(zone, 1960182, true, 1165.24, -21.7587, -738.934, 0)
        newspawn3 = SpawnMob(zone, 1960182, true, 1163.75, -21.6419, -744.377, 0)
        newspawn4 = SpawnMob(zone, 1960182, true, 1172.83, -22.529, -745.2644, 0)
        treespawn = SpawnMob(zone, 1960155, true, 1169.29, -22.0886, -742.247, 0)
    else
   --     Say(player, "You do not have quest 522")
        newspawn1 = SpawnMob(zone, 1960154, true, 1161.29, -21.6585, -741.387, 0)
        newspawn2 = SpawnMob(zone, 1960154, true, 1165.24, -21.7587, -738.934, 0)
        newspawn3 = SpawnMob(zone, 1960154, true, 1163.75, -21.6419, -744.377, 0)
        newspawn4 = SpawnMob(zone, 1960154, true, 1172.83, -22.529, -745.2644, 0)
        treespawn = SpawnMob(zone, 1960184, true, 1169.29, -22.0886, -742.247, 0)
    end
        AddSpawnAccess(newspawn1, player)
        AddSpawnAccess(newspawn2, player)
        AddSpawnAccess(newspawn3, player)
        AddSpawnAccess(newspawn4, player)
        AddSpawnAccess(treespawn, player)
        
        SetTempVariable(player, "spawn1", newspawn1)  
        SetTempVariable(player, "spawn2", newspawn2)
        SetTempVariable(player, "spawn3", newspawn3)
        SetTempVariable(player, "spawn4", newspawn4)
        SetTempVariable(player, "treespawn", treespawn)
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function callout(zone,Spawn)
	local players = GetPlayersInZone(zone)
	for index, player in ipairs(players) do
		SendPopUpMessage(player, "Grinding stone can be heard as something ancient stirs in the ruins.", 255, 0, 0)
		SendMessage(player, "Grinding stone can be heard as something ancient stirs in the ruins.")
	end
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