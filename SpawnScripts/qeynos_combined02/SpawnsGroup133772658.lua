--[[
    Script Name    : SpawnScripts/qeynos_combined02/SpawnsGroup133772658.lua
    Script Author  : Rylec
    Script Date    : 2021.10.05 12:10:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    GuardTolar(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function GuardTolar(NPC)
    local zone = GetZone(NPC)
    local spawnChoice = MakeRandomInt(1,3)

        if spawnChoice == 1 then 
        SpawnByLocationID(zone, 570718)         
--            local guardTolar = SpawnMob(zone, 6600388, false, 515.3297, -20.57685, -290.6479, 230)
--            local canineWatcher = SpawnMob(zone, 6600687, false, 515.4407, -20.61468, -293.3502, 240)
        elseif spawnChoice == 2 then 
        SpawnByLocationID(zone, 133772660)  
--            local guardTolar = SpawnMob(zone, 6600388, false, 514.7665, -20.86097, -292.2155, 230)
--            local canineWatcher = SpawnMob(zone, 6600687, false, 515.4407, -20.61468, -293.3502, 240)
        else
        SpawnByLocationID(zone, 133772661)  
--            local guardTolar = SpawnMob(zone, 6600388, false, 514.8268, -20.40517, -284.834, 269.4219)
--           local canineWatcher = SpawnMob(zone, 6600687, false, 516.6714, -20.46721, -287.4783, 240)
        end
end