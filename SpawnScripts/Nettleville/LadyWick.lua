--[[
    Script Name    : SpawnScripts/Nettleville/LadyWick.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 04:06:12
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
GenericEcologyHail(NPC,Spawn,faction)
end

function InRange(NPC,Spawn)
GenericEcologyHail(NPC,Spawn,faction)
end

function FaceStreet(NPC)
	SpawnSet(NPC, "heading", "250")
end	
	
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 609.64, -19.42, 317.61, 2, 1)
	MovementLoopAddLocation(NPC, 609.64, -19.42, 317.61, 2, 1,"FaceStreet")
	MovementLoopAddLocation(NPC, 609.64, -19.42, 317.61, 2, 36,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 609.64, -19.42, 317.61, 2, 36,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 609.64, -19.42, 317.61, 2, 36,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 610.55, -19.42, 317.87, 2, 0)
	MovementLoopAddLocation(NPC, 618.32, -20.42, 325.41, 2, 1)
	MovementLoopAddLocation(NPC, 618.32, -20.42, 325.41, 2, 95,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 617, -20.51, 324.62, 2, 0)
	MovementLoopAddLocation(NPC, 610.24, -20.55, 335.25, 2, 0)
	MovementLoopAddLocation(NPC, 608.78, -20.72, 341.48, 2, 0)
	MovementLoopAddLocation(NPC, 606.94, -20.61, 349.35, 2, 0)
	MovementLoopAddLocation(NPC, 606.62, -20.73, 356.02, 2, 0)
	MovementLoopAddLocation(NPC, 607.44, -23.68, 365.68, 2, 0)
	MovementLoopAddLocation(NPC, 610.09, -25.72, 370.01, 2, 0)
	MovementLoopAddLocation(NPC, 610.71, -26.51, 380.34, 2, 0)
	MovementLoopAddLocation(NPC, 611.62, -26.5, 380.21, 2, 1)
	MovementLoopAddLocation(NPC, 611.62, -26.5, 380.21, 2, 65)
	MovementLoopAddLocation(NPC, 613.31, -26.47, 380.64, 2, 0)
	MovementLoopAddLocation(NPC, 612.65, -26.5, 381.87, 2, 0)
	MovementLoopAddLocation(NPC, 609.95, -26.52, 381.37, 2, 0)
	MovementLoopAddLocation(NPC, 604.65, -26.54, 382.26, 2, 1)
	MovementLoopAddLocation(NPC, 604.65, -26.54, 382.26, 2, 65,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 603.3, -26.54, 382.61, 2, 0)
	MovementLoopAddLocation(NPC, 605.1, -26.53, 381.55, 2, 0)
	MovementLoopAddLocation(NPC, 605.07, -26.52, 380.15, 2, 0)
	MovementLoopAddLocation(NPC, 602.42, -26.38, 373.37, 2, 0)
	MovementLoopAddLocation(NPC, 604.8, -20.78, 358.33, 2, 0)
	MovementLoopAddLocation(NPC, 606.88, -20.72, 345.55, 2, 0)
	MovementLoopAddLocation(NPC, 609.85, -20.62, 336.13, 2, 0)
	MovementLoopAddLocation(NPC, 610.16, -20.56, 335.15, 2, 0)
	MovementLoopAddLocation(NPC, 605.24, -20.4, 326.1, 2, 1)
	MovementLoopAddLocation(NPC, 605.24, -20.4, 326.1, 2, 65,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 606.82, -20.57, 327.48, 2, 0)
	MovementLoopAddLocation(NPC, 614.57, -20.49, 328.11, 2, 0)
	MovementLoopAddLocation(NPC, 617.03, -20.44, 326.41, 2, 0)
	MovementLoopAddLocation(NPC, 618.12, -20.41, 325.82, 2, 1)
	MovementLoopAddLocation(NPC, 618.12, -20.41, 325.82, 2, 18,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 618.12, -20.41, 325.82, 2, 0)
	MovementLoopAddLocation(NPC, 617.51, -20.47, 324.99, 2, 0)
end


