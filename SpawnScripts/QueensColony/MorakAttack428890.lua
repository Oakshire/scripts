--[[
        Script Name     : SpawnScripts/QueensColony/MorakAttack428890.lua
	Script Purpose	: waypoint to their death
	Script Author	: premierio015
	Script Date	: 2020.04.18
	Script Notes    : 
--]]

function spawn(NPC, Spawn)
	waypoints(NPC)
        local Westfall01 = GetSpawn(Spawn, 433081)
        local Westfall02 = GetSpawn(Spawn, 133771741)       
        Westfall(NPC)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
        MoveToLocation(NPC, 254.46, -5.10, 65.5, 7, "aggro", false)
        MoveToLocation(NPC, 246.03, -6.98, 83.05, 7, "aggro", false)
        MoveToLocation(NPC, 233.07, -4.19, 148.65, 7, "aggro", false)
        MoveToLocation(NPC, 232.17, -3.42, 152.3, 7, "aggro", false) 
--        AddTimer(NPC, 30000, "Westfall")
end

function Westfall(NPC)
	if Westfall01 ~= nil then
		Attack(NPC, Westfall01)
	end
	
	if Westfall02 ~= nil then
		Attack(NPC, Westfall02)
	end
end
