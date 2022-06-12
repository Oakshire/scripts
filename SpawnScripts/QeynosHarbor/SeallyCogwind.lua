--[[
    Script Name    : SpawnScripts/QeynosHarbor/SeallyCogwind.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 03:06:41
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
    
    

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 726.83, -20.79, -75.84, 2, 1)
	MovementLoopAddLocation(NPC, 726.83, -20.79, -75.84, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 733.72, -21.39, -43.84, 2, 5)
	MovementLoopAddLocation(NPC, 733.97, -21.39, -43.46, 2, 1)
	MovementLoopAddLocation(NPC, 733.97, -21.39, -43.46, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 733.29, -21.39, -31.13, 2, 0)
	MovementLoopAddLocation(NPC, 733.59, -21.39, -31.45, 2, 1)
	MovementLoopAddLocation(NPC, 733.59, -21.39, -31.45, 2, 8,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 733.94, -21.39, -31.74, 2, 1)
	MovementLoopAddLocation(NPC, 735.39, -20.9, -9.8, 2, 0)
	MovementLoopAddLocation(NPC, 735.42, -20.88, -9.36, 2, 5)
	MovementLoopAddLocation(NPC, 765.31, -20.76, -0.87, 2, 15)
	MovementLoopAddLocation(NPC, 747.54, -21.27, -29.79, 2, 1)
	MovementLoopAddLocation(NPC, 747.54, -21.27, -29.79, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 746.32, -21.38, -31.92, 2, 5)
	MovementLoopAddLocation(NPC, 764.39, -21.48, -61.98, 2, 12)
	MovementLoopAddLocation(NPC, 796.23, -20.96, -64.27, 2, 0)
	MovementLoopAddLocation(NPC, 815.86, -21.3, -64.63, 2, 0)
	MovementLoopAddLocation(NPC, 856.87, -25.36, -66.27, 2, 0)
	MovementLoopAddLocation(NPC, 866.36, -25.36, -54.78, 2, 0)
	MovementLoopAddLocation(NPC, 866.48, -25.31, -54.29, 2, 1)
	MovementLoopAddLocation(NPC, 866.48, -25.31, -54.29, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 867.88, -25.34, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 868.67, -25.4, -59.4, 2, 0)
	MovementLoopAddLocation(NPC, 890.76, -25.42, -61.57, 2, 0)
	MovementLoopAddLocation(NPC, 899.88, -25.5, -59.83, 2, 0)
	MovementLoopAddLocation(NPC, 899.73, -25.51, -59.38, 2, 1)
	MovementLoopAddLocation(NPC, 899.73, -25.51, -59.38, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 899.88, -25.5, -59.83, 2, 0)
	MovementLoopAddLocation(NPC, 890.76, -25.42, -61.57, 2, 0)
	MovementLoopAddLocation(NPC, 868.67, -25.4, -59.4, 2, 0)
	MovementLoopAddLocation(NPC, 867.88, -25.34, -54.72, 2, 0)
	MovementLoopAddLocation(NPC, 866.48, -25.31, -54.29, 2, 5)
	MovementLoopAddLocation(NPC, 866.36, -25.36, -54.78, 2, 0)
	MovementLoopAddLocation(NPC, 856.87, -25.36, -66.27, 2, 0)
	MovementLoopAddLocation(NPC, 815.86, -21.3, -64.63, 2, 0)
	MovementLoopAddLocation(NPC, 796.23, -20.96, -64.27, 2, 0)
	MovementLoopAddLocation(NPC, 764.39, -21.48, -61.98, 2, 15)
	MovementLoopAddLocation(NPC, 746.32, -21.38, -31.92, 2, 5)
	MovementLoopAddLocation(NPC, 747.54, -21.27, -29.79, 2, 1)
	MovementLoopAddLocation(NPC, 747.54, -21.27, -29.79, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 765.31, -20.76, -0.87, 2, 0)
	MovementLoopAddLocation(NPC, 735.42, -20.88, -9.36, 2, 5)
	MovementLoopAddLocation(NPC, 735.39, -20.9, -9.8, 2, 0)
	MovementLoopAddLocation(NPC, 733.94, -21.39, -31.74, 2, 5)
	MovementLoopAddLocation(NPC, 733.59, -21.39, -31.45, 2, 0)
	MovementLoopAddLocation(NPC, 733.29, -21.39, -31.13, 2, 0)
	MovementLoopAddLocation(NPC, 733.97, -21.39, -43.46, 2, 5)
	MovementLoopAddLocation(NPC, 733.72, -21.39, -43.84, 2, 1)
	MovementLoopAddLocation(NPC, 733.72, -21.39, -43.84, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 726.83, -20.79, -75.84, 2, 0)
end




