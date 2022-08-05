--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/arat.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.04 12:08:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)== 1586106 then
	MovementLoopAddLocation(NPC, 2.31, -2.07, -4.95, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 2.11, -2.07, -6.55, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 2.74, -2.07, -6.01, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 0.07, -2.07, -3.85, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 0.72, -2.07, -6.06, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 2.38, -2.07, -5.3, 1, math.random(6,10))
    elseif GetSpawnLocationID(NPC)== 1586105 then
    MovementLoopAddLocation(NPC, -0.83, -2.07, 3.03, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, -1.84, -2.07, 4.51, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, 0.4, -2.07, 2.09, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, -0.34, -2.07, 3.74, 1, math.random(6,10))
	MovementLoopAddLocation(NPC, -1.33, -2.07, 2.02, 1, math.random(6,10))
end
end