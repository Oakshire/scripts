--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplyrunner3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:16
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin1.lua")

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 228.67, -6, 120.27, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 219.23, -4, 133.62, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 219.23, -4, 133.62, 4, 0)
	MovementLoopAddLocation(NPC, 234.38, -6.48, 102.17, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 234.38, -6.48, 102.17, 4, 0)
	MovementLoopAddLocation(NPC, 248.69, -6.8, 104.02, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 248.69, -6.8, 104.02, 4, 0)
	MovementLoopAddLocation(NPC, 237.49, -6.76, 100.23, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 237.49, -6.76, 100.23, 4, 0)
	MovementLoopAddLocation(NPC, 239.11, -5.06, 125.8, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 239.11, -5.06, 125.8, 4, 0)
	MovementLoopAddLocation(NPC, 239.11, -5.06, 125.8, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 239.11, -5.06, 125.8, 4, 0)
	MovementLoopAddLocation(NPC, 230.6, -6.32, 102.52, 4, math.random(5,10))
	MovementLoopAddLocation(NPC, 230.6, -6.32, 102.52, 4, 0)
	
end
