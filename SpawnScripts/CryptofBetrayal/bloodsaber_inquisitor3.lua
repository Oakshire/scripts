--[[
	Script Name		:	bloodsaber_inqusitor3.lua
	Script Purpose	:	Waypoint Path for bloodsaber_inqusitor3.lua
	Script Author	:	Devn00b
	Script Date		:	06/11/2020 04:28:50 PM
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
	MovementLoopAddLocation(NPC, -26.97, -0.36, -184.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.19, -0.18, -188.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.86, -0.16, -175.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.23, -0.75, -178.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.94, -0.79, -174.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.73, -0.18, -167.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.15, -0.18, -167.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.48, -0.03, -152.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.2, -0.01, -162.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.58, -0.18, -181.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -6.5, -0.16, -181.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.31, -0.18, -182.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.17, -0.18, -178.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.82, -0.18, -178.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.7, -0.18, -189.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.78, -0.8, -175.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.44, -0.18, -165.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -41.11, -0.18, -167.78, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.44, -0.18, -165.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.78, -0.8, -175.51, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -24.7, -0.18, -189.77, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.82, -0.18, -178.13, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.17, -0.18, -178.48, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -18.31, -0.18, -182.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -6.5, -0.16, -181.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -19.58, -0.18, -181.72, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.2, -0.01, -162.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.48, -0.03, -152.53, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -34.15, -0.18, -167.23, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -40.73, -0.18, -167.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -39.94, -0.79, -174.86, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -29.23, -0.75, -178.7, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -20.86, -0.16, -175.98, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -22.19, -0.18, -188.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -26.97, -0.36, -184.33, 2, math.random(0,10))
end


