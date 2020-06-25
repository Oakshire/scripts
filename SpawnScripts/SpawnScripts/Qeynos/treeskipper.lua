--[[
	Script Name		:	treeskipper.lua
	Script Purpose	:	Waypoint Path for treeskipper.lua
	Script Author	:	Devn00b
	Script Date		:	04/11/2020 04:12:39 PM
	Script Notes	:	Locations collected from Live
--]]

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
	MovementLoopAddLocation(NPC, 448.85, -20.75, 212.18, 2, 0)
	MovementLoopAddLocation(NPC, 448.56, -19.39, 195.8, 2, 0)
	MovementLoopAddLocation(NPC, 462.67, -20.87, 199.08, 2, 0)
	MovementLoopAddLocation(NPC, 495.29, -11.85, 144.64, 2, 0)
	MovementLoopAddLocation(NPC, 527.8, -10.55, 150.67, 2, 0)
	MovementLoopAddLocation(NPC, 560.54, -10.58, 151.39, 2, 0)
	MovementLoopAddLocation(NPC, 617.98, -12.21, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 619.51, -12.47, 156.58, 2, 0)
	MovementLoopAddLocation(NPC, 621.44, -16.61, 198.37, 2, 0)
	MovementLoopAddLocation(NPC, 681.93, -19.52, 181.63, 2, 0)
	MovementLoopAddLocation(NPC, 691.43, -19.52, 195.66, 2, 0)
	MovementLoopAddLocation(NPC, 701.87, -19.53, 192.37, 2, 0)
	MovementLoopAddLocation(NPC, 704.66, -19.51, 184.42, 2, 0)
	MovementLoopAddLocation(NPC, 706.97, -19.45, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 710.37, -20.39, 164.85, 2, 0)
	MovementLoopAddLocation(NPC, 710.58, -20.57, 163.84, 2, 0)
	MovementLoopAddLocation(NPC, 713.44, -19.43, 175.98, 2, 0)
	MovementLoopAddLocation(NPC, 718.92, -19.62, 185.98, 2, 0)
	MovementLoopAddLocation(NPC, 721.15, -19.58, 192.81, 2, 0)
	MovementLoopAddLocation(NPC, 711.39, -19.53, 194.73, 2, 0)
	MovementLoopAddLocation(NPC, 707.3, -19.54, 193.15, 2, 0)
	MovementLoopAddLocation(NPC, 698.38, -19.52, 196.11, 2, 0)
	MovementLoopAddLocation(NPC, 688.66, -19.52, 199.3, 2, 0)
	MovementLoopAddLocation(NPC, 686.66, -19.52, 214.73, 2, 0)
	MovementLoopAddLocation(NPC, 670.13, -19.57, 221.33, 2, 0)
	MovementLoopAddLocation(NPC, 649.1, -19.17, 227.69, 2, 0)
	MovementLoopAddLocation(NPC, 612.44, -18.36, 236.41, 2, 0)
	MovementLoopAddLocation(NPC, 582.25, -17.94, 241.81, 2, 0)
	MovementLoopAddLocation(NPC, 559.17, -17.69, 243.04, 2, 0)
	MovementLoopAddLocation(NPC, 483.4, -20.64, 240.69, 2, 0)
	MovementLoopAddLocation(NPC, 461.95, -21.96, 232.57, 2, 0)
	MovementLoopAddLocation(NPC, 449.24, -20.76, 213.14, 2, 0)
	MovementLoopAddLocation(NPC, 449.13, -19.36, 195.78, 2, 0)
	MovementLoopAddLocation(NPC, 449.24, -20.76, 213.14, 2, 0)
	MovementLoopAddLocation(NPC, 461.95, -21.96, 232.57, 2, 0)
	MovementLoopAddLocation(NPC, 483.4, -20.64, 240.69, 2, 0)
	MovementLoopAddLocation(NPC, 559.17, -17.69, 243.04, 2, 0)
	MovementLoopAddLocation(NPC, 582.25, -17.94, 241.81, 2, 0)
	MovementLoopAddLocation(NPC, 612.44, -18.36, 236.41, 2, 0)
	MovementLoopAddLocation(NPC, 649.1, -19.17, 227.69, 2, 0)
	MovementLoopAddLocation(NPC, 670.13, -19.57, 221.33, 2, 0)
	MovementLoopAddLocation(NPC, 686.66, -19.52, 214.73, 2, 0)
	MovementLoopAddLocation(NPC, 688.66, -19.52, 199.3, 2, 0)
	MovementLoopAddLocation(NPC, 698.38, -19.52, 196.11, 2, 0)
	MovementLoopAddLocation(NPC, 707.3, -19.54, 193.15, 2, 0)
	MovementLoopAddLocation(NPC, 711.39, -19.53, 194.73, 2, 0)
	MovementLoopAddLocation(NPC, 721.15, -19.58, 192.81, 2, 0)
	MovementLoopAddLocation(NPC, 718.92, -19.62, 185.98, 2, 0)
	MovementLoopAddLocation(NPC, 713.44, -19.43, 175.98, 2, 0)
	MovementLoopAddLocation(NPC, 710.58, -20.57, 163.84, 2, 0)
	MovementLoopAddLocation(NPC, 710.37, -20.39, 164.85, 2, 0)
	MovementLoopAddLocation(NPC, 706.97, -19.45, 177.25, 2, 0)
	MovementLoopAddLocation(NPC, 704.66, -19.51, 184.42, 2, 0)
	MovementLoopAddLocation(NPC, 701.87, -19.53, 192.37, 2, 0)
	MovementLoopAddLocation(NPC, 691.43, -19.52, 195.66, 2, 0)
	MovementLoopAddLocation(NPC, 681.93, -19.52, 181.63, 2, 0)
	MovementLoopAddLocation(NPC, 621.44, -16.61, 198.37, 2, 0)
	MovementLoopAddLocation(NPC, 619.51, -12.47, 156.58, 2, 0)
	MovementLoopAddLocation(NPC, 617.98, -12.21, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, 560.54, -10.58, 151.39, 2, 0)
	MovementLoopAddLocation(NPC, 527.8, -10.55, 150.67, 2, 0)
	MovementLoopAddLocation(NPC, 495.29, -11.85, 144.64, 2, 0)
	MovementLoopAddLocation(NPC, 462.67, -20.87, 199.08, 2, 0)
	MovementLoopAddLocation(NPC, 448.56, -19.39, 195.8, 2, 0)
	MovementLoopAddLocation(NPC, 448.85, -20.75, 212.18, 2, 0)
end


