--[[
    Script Name    : SpawnScripts/QeynosHarbor/charlene.lua
    Script Author  : Cynnar
    Script Date    : 2020.04.11 11:04:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end
--[[
	Script Name		:	charlene.lua
	Script Purpose	:	Waypoint Path for charlene.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 04:14:49 PM
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
	MovementLoopAddLocation(NPC, 832.06, -23.31, 45.72, 2, 0)
	MovementLoopAddLocation(NPC, 879.32, -25.43, 35.83, 2, 0)
	MovementLoopAddLocation(NPC, 903.88, -25.37, 13.02, 2, 0)
	MovementLoopAddLocation(NPC, 932.38, -25.55, 26.75, 2, 0)
	MovementLoopAddLocation(NPC, 948.25, -25.5, 32.06, 2, 0)
	MovementLoopAddLocation(NPC, 962.44, -25.47, 16.52, 2, 0)
	MovementLoopAddLocation(NPC, 978.08, -25.01, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, 994.13, -25.12, 16.11, 2, 0)
	MovementLoopAddLocation(NPC, 1000.46, -25.82, 26.08, 2, 0)
	MovementLoopAddLocation(NPC, 995.28, -25.11, 14.52, 2, 0)
	MovementLoopAddLocation(NPC, 964.46, -25.46, 14.05, 2, 0)
	MovementLoopAddLocation(NPC, 948.82, -25.5, 30.55, 2, 0)
	MovementLoopAddLocation(NPC, 907.29, -25.46, 14.26, 2, 0)
	MovementLoopAddLocation(NPC, 909, -25.41, -1.48, 2, 0)
	MovementLoopAddLocation(NPC, 891.19, -25.49, -26.78, 2, 0)
	MovementLoopAddLocation(NPC, 893.37, -25.52, -23.76, 2, 0)
	MovementLoopAddLocation(NPC, 906.58, -25.41, -25.59, 2, 0)
	MovementLoopAddLocation(NPC, 899.27, -25.41, -49.86, 2, 0)
	MovementLoopAddLocation(NPC, 862.97, -25.42, -68.34, 2, 0)
	MovementLoopAddLocation(NPC, 864.82, -25.44, -86.64, 2, 0)
	MovementLoopAddLocation(NPC, 855.5, -25.48, -69.74, 2, 0)
	MovementLoopAddLocation(NPC, 813.77, -20.86, -65.23, 2, 0)
	MovementLoopAddLocation(NPC, 746.74, -21.28, -21.97, 2, 0)
	MovementLoopAddLocation(NPC, 722.98, -21.38, -36.4, 2, 0)
	MovementLoopAddLocation(NPC, 696.28, -20.64, -66.63, 2, 0)
	MovementLoopAddLocation(NPC, 720.45, -20.86, -115.5, 2, 0)
	MovementLoopAddLocation(NPC, 696.28, -20.64, -66.63, 2, 0)
	MovementLoopAddLocation(NPC, 722.98, -21.38, -36.4, 2, 0)
	MovementLoopAddLocation(NPC, 746.74, -21.28, -21.97, 2, 0)
	MovementLoopAddLocation(NPC, 813.77, -20.86, -65.23, 2, 0)
	MovementLoopAddLocation(NPC, 855.5, -25.48, -69.74, 2, 0)
	MovementLoopAddLocation(NPC, 864.82, -25.44, -86.64, 2, 0)
	MovementLoopAddLocation(NPC, 862.97, -25.42, -68.34, 2, 0)
	MovementLoopAddLocation(NPC, 899.27, -25.41, -49.86, 2, 0)
	MovementLoopAddLocation(NPC, 906.58, -25.41, -25.59, 2, 0)
	MovementLoopAddLocation(NPC, 893.37, -25.52, -23.76, 2, 0)
	MovementLoopAddLocation(NPC, 891.19, -25.49, -26.78, 2, 0)
	MovementLoopAddLocation(NPC, 909, -25.41, -1.48, 2, 0)
	MovementLoopAddLocation(NPC, 907.29, -25.46, 14.26, 2, 0)
	MovementLoopAddLocation(NPC, 948.82, -25.5, 30.55, 2, 0)
	MovementLoopAddLocation(NPC, 964.46, -25.46, 14.05, 2, 0)
	MovementLoopAddLocation(NPC, 995.28, -25.11, 14.52, 2, 0)
	MovementLoopAddLocation(NPC, 1000.46, -25.82, 26.08, 2, 0)
	MovementLoopAddLocation(NPC, 994.13, -25.12, 16.11, 2, 0)
	MovementLoopAddLocation(NPC, 978.08, -25.01, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, 962.44, -25.47, 16.52, 2, 0)
	MovementLoopAddLocation(NPC, 948.25, -25.5, 32.06, 2, 0)
	MovementLoopAddLocation(NPC, 932.38, -25.55, 26.75, 2, 0)
	MovementLoopAddLocation(NPC, 903.88, -25.37, 13.02, 2, 0)
	MovementLoopAddLocation(NPC, 879.32, -25.43, 35.83, 2, 0)
	MovementLoopAddLocation(NPC, 832.06, -23.31, 45.72, 2, 0)
end



function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

