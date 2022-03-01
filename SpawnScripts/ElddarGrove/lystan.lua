--[[
	Script Name		:	lystan.lua
	Script Purpose	:	Waypoint Path for lystan.lua
	Script Author	:	Devn00b
	Script Date		:	08/04/2020 01:42:54 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 643.88, -19.24, -320.76, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.69, -13.13, -364.87, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 622.02, -15.73, -366.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 598.25, -20.37, -364.02, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 561.69, -21.01, -356.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 565.23, -20.83, -345.95, 2, math.random(0,40))
	MovementLoopAddLocation(NPC, 559.95, -20.62, -346.75, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.69, -21.5, -317.76, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 560.18, -21.9, -314.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 581.97, -21.37, -313.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 601.72, -21.05, -312.89, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 638.17, -20.31, -308.01, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.88, -21.27, -308.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.85, -21.94, -301.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 650.86, -17.98, -206.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 649.85, -21.94, -301.33, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 648.88, -21.27, -308.26, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 638.17, -20.31, -308.01, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 601.72, -21.05, -312.89, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 581.97, -21.37, -313.43, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 560.18, -21.9, -314.31, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 550.69, -21.5, -317.76, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 559.95, -20.62, -346.75, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 565.23, -20.83, -345.95, 2, math.random(0,40))
	MovementLoopAddLocation(NPC, 561.69, -21.01, -356.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 598.25, -20.37, -364.02, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 622.02, -15.73, -366.03, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 644.69, -13.13, -364.87, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 643.88, -19.24, -320.76, 2, math.random(0,8))
end


