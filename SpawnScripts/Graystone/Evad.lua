--[[
    Script Name    : SpawnScripts/Graystone/Evad.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 04:07:04
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
 waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
  	 if math.random(1, 100) <= 20 then
	GenericGuardHail(NPC,Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 891.2, -24.89, -153.41, 2, 35)
	MovementLoopAddLocation(NPC, 891.92, -24.9, -153.18, 2, 0)
	MovementLoopAddLocation(NPC, 890.05, -24.84, -152.31, 2, 0)
	MovementLoopAddLocation(NPC, 878.86, -24.92, -151.33, 2, 0)
	MovementLoopAddLocation(NPC, 871.1, -23.46, -151.17, 2, 0)
	MovementLoopAddLocation(NPC, 859.21, -23.64, -151.32, 2, 0)
	MovementLoopAddLocation(NPC, 845.66, -24.37, -151.63, 2, 0)
	MovementLoopAddLocation(NPC, 842.5, -25.52, -158.11, 2, 0)
	MovementLoopAddLocation(NPC, 842.17, -24.68, -166.14, 2, 0)
	MovementLoopAddLocation(NPC, 845.98, -24.17, -169.24, 2, 0)
	MovementLoopAddLocation(NPC, 852.97, -23.46, -172.07, 2, 0)
	MovementLoopAddLocation(NPC, 858.16, -22.55, -174.96, 2, 35)
	MovementLoopAddLocation(NPC, 855.75, -23.15, -172.11, 2, 0)
	MovementLoopAddLocation(NPC, 851.58, -23.96, -167.19, 2, 0)
	MovementLoopAddLocation(NPC, 841.74, -25.14, -162.76, 2, 0)
	MovementLoopAddLocation(NPC, 836.79, -25.51, -157.13, 2, 0)
	MovementLoopAddLocation(NPC, 836.8, -25.01, -152.23, 2, 0)
	MovementLoopAddLocation(NPC, 849.71, -24.22, -152.69, 2, 0)
	MovementLoopAddLocation(NPC, 862.63, -22.99, -153.02, 2, 0)
	MovementLoopAddLocation(NPC, 878.92, -24.92, -151.48, 2, 0)
	MovementLoopAddLocation(NPC, 885.55, -24.76, -151.71, 2, 0)
end


