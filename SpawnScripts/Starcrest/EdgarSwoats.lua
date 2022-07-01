--[[
    Script Name    : SpawnScripts/Starcrest/EdgarSwoats.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.30 01:06:20
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 784.23, -20.34, 249.17, 2, 1)
	MovementLoopAddLocation(NPC, 784.23, -20.34, 249.17, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 784.34, -20.33, 250.02, 2, 0)
	MovementLoopAddLocation(NPC, 781.77, -20.36, 248.38, 2, 0)
	MovementLoopAddLocation(NPC, 779.91, -20.42, 246.41, 2, 0)
	MovementLoopAddLocation(NPC, 770.32, -20.34, 242.53, 2, 0)
	MovementLoopAddLocation(NPC, 757.92, -20.32, 245.24, 2, 0)
	MovementLoopAddLocation(NPC, 746.6, -20.35, 247.49, 2, 0)
	MovementLoopAddLocation(NPC, 743.75, -20.34, 248.89, 2, 0)
	MovementLoopAddLocation(NPC, 743.66, -20.39, 251.82, 2, 0)
	MovementLoopAddLocation(NPC, 743.92, -20.38, 261.75, 2, 0)
	MovementLoopAddLocation(NPC, 745.15, -20.4, 264.36, 2, 1)
	MovementLoopAddLocation(NPC, 745.15, -20.4, 264.36, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 744.79, -20.53, 267.97, 2, 0)
	MovementLoopAddLocation(NPC, 753.81, -20.64, 270.59, 2, 0)
	MovementLoopAddLocation(NPC, 755.88, -19.53, 267.46, 2, 1)
	MovementLoopAddLocation(NPC, 755.88, -19.53, 267.46, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 754.84, -20.6, 270.75, 2, 0)
	MovementLoopAddLocation(NPC, 749.36, -20.6, 269.07, 2, 0)
	MovementLoopAddLocation(NPC, 742.96, -20.43, 266.66, 2, 0)
	MovementLoopAddLocation(NPC, 741.86, -20.4, 260.21, 2, 0)
	MovementLoopAddLocation(NPC, 744.22, -20.36, 247.97, 2, 0)
	MovementLoopAddLocation(NPC, 749.74, -20.39, 245.81, 2, 0)
	MovementLoopAddLocation(NPC, 763.81, -20.39, 242.81, 2, 0)
	MovementLoopAddLocation(NPC, 785.21, -20.41, 245.46, 2, 0)
	MovementLoopAddLocation(NPC, 796.63, -19.83, 247.2, 2, 1)
	MovementLoopAddLocation(NPC, 796.63, -19.83, 247.2, 2, 18,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 797.28, -20.01, 248.81, 2, 0)
	MovementLoopAddLocation(NPC, 793.11, -20.14, 247.83, 2, 0)
	MovementLoopAddLocation(NPC, 784.89, -20.39, 246.96, 2, 0)
end


