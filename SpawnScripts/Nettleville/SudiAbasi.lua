--[[
    Script Name    : SpawnScripts/Nettleville/SudiAbasi.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 12:06:11
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
GenericEcologyCallout(NPC,Spawn,faction)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 626.14, -19.54, 305.09, 2, 1)
	MovementLoopAddLocation(NPC, 626.14, -19.54, 305.09, 2, 95,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 627.08, -19.67, 305.45, 2, 0)
	MovementLoopAddLocation(NPC, 627.79, -20.58, 308.98, 2, 0)
	MovementLoopAddLocation(NPC, 628.18, -20.42, 311.98, 2, 0)
	MovementLoopAddLocation(NPC, 621.52, -20.5, 319.16, 2, 0)
	MovementLoopAddLocation(NPC, 619.03, -20.46, 321.97, 2, 0)
	MovementLoopAddLocation(NPC, 611.52, -20.39, 333.64, 2, 0)
	MovementLoopAddLocation(NPC, 610.35, -20.54, 335.58, 2, 0)
	MovementLoopAddLocation(NPC, 609.54, -20.7, 339.97, 2, 0)
	MovementLoopAddLocation(NPC, 608.76, -20.69, 343.52, 2, 0)
	MovementLoopAddLocation(NPC, 596.39, -20.15, 350, 2, 1)
	MovementLoopAddLocation(NPC, 596.39, -20.15, 350, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 597.52, -20.25, 348.52, 2, 0)
	MovementLoopAddLocation(NPC, 601.33, -20.44, 349.84, 2, 0)
	MovementLoopAddLocation(NPC, 606.6, -20.78, 357.61, 2, 0)
	MovementLoopAddLocation(NPC, 607.01, -22, 361.96, 2, 0)
	MovementLoopAddLocation(NPC, 608.65, -24.55, 367.54, 2, 0)
	MovementLoopAddLocation(NPC, 609.7, -25.3, 369.08, 2, 0)
	MovementLoopAddLocation(NPC, 613.79, -26.34, 372.75, 2, 0)
	MovementLoopAddLocation(NPC, 618.54, -26.02, 373.67, 2, 0)
	MovementLoopAddLocation(NPC, 628.77, -25.15, 374.88, 2, 0)
	MovementLoopAddLocation(NPC, 633.24, -24.96, 375.09, 2, 1)
	MovementLoopAddLocation(NPC, 633.24, -24.96, 375.09, 2, 45,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 634.19, -24.92, 374.68, 2, 0)
	MovementLoopAddLocation(NPC, 624.64, -25.38, 373.48, 2, 0)
	MovementLoopAddLocation(NPC, 616.65, -26.22, 372.89, 2, 0)
	MovementLoopAddLocation(NPC, 603.31, -26.38, 372.99, 2, 0)
	MovementLoopAddLocation(NPC, 603.13, -25.38, 370.27, 2, 0)
	MovementLoopAddLocation(NPC, 604.17, -21.73, 361.68, 2, 0)
	MovementLoopAddLocation(NPC, 604.69, -20.77, 359.3, 2, 0)
	MovementLoopAddLocation(NPC, 604.42, -20.7, 357.09, 2, 0)
	MovementLoopAddLocation(NPC, 606.21, -20.58, 350.22, 2, 0)
	MovementLoopAddLocation(NPC, 608.9, -20.66, 336.33, 2, 0)
	MovementLoopAddLocation(NPC, 614.59, -20.59, 326.56, 2, 0)
	MovementLoopAddLocation(NPC, 620.95, -20.52, 318.89, 2, 0)
	MovementLoopAddLocation(NPC, 623.72, -20.43, 316.23, 2, 0)
	MovementLoopAddLocation(NPC, 628.63, -20.42, 311.89, 2, 0)
	MovementLoopAddLocation(NPC, 635.21, -20.45, 311.44, 2, 1)
	MovementLoopAddLocation(NPC, 635.21, -20.45, 311.44, 2, 17,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 625.45, -19.54, 305.27, 2, 0)
end




