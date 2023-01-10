--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid5.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    waypoints(NPC)
end
    


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -104.13, -0.09, -171.67, 2, 4)
	MovementLoopAddLocation(NPC, -107.48, -0.13, -170.36, 2, 0)
	MovementLoopAddLocation(NPC, -108.88, -0.11, -168.91, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -108.88, -0.11, -168.91, 2, 0)
	MovementLoopAddLocation(NPC, -106.29, -0.1, -171.85, 2, 0)
	MovementLoopAddLocation(NPC, -105.16, -0.11, -174.67, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -105.16, -0.11, -174.67, 2, 0)
	MovementLoopAddLocation(NPC, -105.78, -0.09, -172.01, 2, 0)
	MovementLoopAddLocation(NPC, -108.24, -0.09, -171.15, 2, 0)
	MovementLoopAddLocation(NPC, -109.6, -0.12, -170.34, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -109.6, -0.12, -170.34, 2, 0)
	MovementLoopAddLocation(NPC, -108.02, -0.07, -168.74, 2, 0)
	MovementLoopAddLocation(NPC, -106.86, -0.07, -169.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -106.86, -0.07, -169.6, 2, 0)
	MovementLoopAddLocation(NPC, -106.46, -0.09, -172.07, 2, 0)
	MovementLoopAddLocation(NPC, -107.99, -0.06, -171.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -107.99, -0.06, -171.78, 2, 0)
	MovementLoopAddLocation(NPC, -104.94, -0.08, -174.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -104.94, -0.08, -174.66, 2, 0)
	MovementLoopAddLocation(NPC, -104.13, -0.09, -171.67, 2, 3)
end

