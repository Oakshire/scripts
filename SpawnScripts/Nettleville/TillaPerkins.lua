--[[
    Script Name    : SpawnScripts/Nettleville/TillaPerkins.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 08:06:10
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


function InRange(NPC, Spawn) 
 if GetFactionAmount(Spawn,11)<0 then
    FactionCheckingCallout(NPC, Spawn, faction)                  
    end
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, 655.11, -21.47, 323.6, 2, 1)
	MovementLoopAddLocation(NPC, 655.11, -21.47, 323.6, 2, 95,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 654.69, -22.11, 325.87, 2, 0)
	MovementLoopAddLocation(NPC, 659.07, -22.26, 327.73, 2, 0)
	MovementLoopAddLocation(NPC, 664.48, -20.44, 326.39, 2, 0)
	MovementLoopAddLocation(NPC, 665.04, -20.44, 325.12, 2, 0)
	MovementLoopAddLocation(NPC, 675.98, -20.57, 325.38, 2, 0)
	MovementLoopAddLocation(NPC, 679.15, -20.39, 323.39, 2, 0)
	MovementLoopAddLocation(NPC, 679.38, -20.36, 322.72, 2, 1)
	MovementLoopAddLocation(NPC, 679.38, -20.36, 322.72, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 678.85, -20.38, 322.24, 2, 0)
	
MovementLoopAddLocation(NPC, 675.7, -20.54, 327.54, 2, 0)
	MovementLoopAddLocation(NPC, 672.63, -20.45, 323.79, 2, 0)
	MovementLoopAddLocation(NPC, 666.83, -20.43, 313.27, 2, 0)
	MovementLoopAddLocation(NPC, 661.24, -20.42, 303.91, 2, 0)
	MovementLoopAddLocation(NPC, 658.92, -20.42, 300.02, 2, 0)
	MovementLoopAddLocation(NPC, 656.12, -20.42, 298.03, 2, 0)
	MovementLoopAddLocation(NPC, 651.04, -20.42, 300.2, 2, 0)
	MovementLoopAddLocation(NPC, 647.03, -20.31, 303.84, 2, 0)
	MovementLoopAddLocation(NPC, 639.79, -20.43, 307.76, 2, 0)
	MovementLoopAddLocation(NPC, 626.98, -20.43, 312.2, 2, 0)
	MovementLoopAddLocation(NPC, 622.8, -20.48, 317.7, 2, 0)
	MovementLoopAddLocation(NPC, 615.85, -20.55, 325.56, 2, 0)
	MovementLoopAddLocation(NPC, 610.74, -20.48, 334.33, 2, 0)
	MovementLoopAddLocation(NPC, 609.31, -20.66, 336.89, 2, 0)
	MovementLoopAddLocation(NPC, 605.52, -20.71, 346.48, 2, 0)
	MovementLoopAddLocation(NPC, 599.79, -20.67, 345.96, 2, 0)
	MovementLoopAddLocation(NPC, 593.14, -20.36, 344.06, 2, 0)
	MovementLoopAddLocation(NPC, 591.75, -20.33, 345.51, 2, 0)
	MovementLoopAddLocation(NPC, 589.81, -19.85, 347.5, 2, 0)
	MovementLoopAddLocation(NPC, 589.1, -19.21, 349.66, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 587.78, -19.17, 354.47, 2, 0)
	MovementLoopAddLocation(NPC, 586.18, -19.17, 357.43, 2, 0)
	MovementLoopAddLocation(NPC, 584.04, -19.17, 359.24, 2, 0)
	MovementLoopAddLocation(NPC, 581.29, -19.17, 360.34, 2, 1)
	MovementLoopAddLocation(NPC, 581.29, -19.17, 360.34, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 583.82, -19.17, 359.31, 2, 0)
	MovementLoopAddLocation(NPC, 586.68, -19.17, 356.98, 2, 0)
	MovementLoopAddLocation(NPC, 587.71, -19.17, 354.95, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 588.93, -19.22, 350.75, 2, 0)
	MovementLoopAddLocation(NPC, 590.03, -20.25, 346.38, 2, 0)
	MovementLoopAddLocation(NPC, 595.35, -20.35, 344.47, 2, 0)
	MovementLoopAddLocation(NPC, 600.85, -20.67, 344.96, 2, 0)
	MovementLoopAddLocation(NPC, 603.22, -20.8, 344.66, 2, 0)
	MovementLoopAddLocation(NPC, 607.72, -20.69, 336.08, 2, 0)
	MovementLoopAddLocation(NPC, 610.24, -20.52, 331.93, 2, 0)
	MovementLoopAddLocation(NPC, 613.94, -20.63, 326.68, 2, 0)
	MovementLoopAddLocation(NPC, 618.34, -20.54, 320.85, 2, 0)
	MovementLoopAddLocation(NPC, 624.79, -20.44, 312.98, 2, 0)
	MovementLoopAddLocation(NPC, 629.4, -20.55, 309.94, 2, 0)
	MovementLoopAddLocation(NPC, 638.66, -20.6, 305.33, 2, 0)
	MovementLoopAddLocation(NPC, 643.02, -20.49, 302.89, 2, 0)
	MovementLoopAddLocation(NPC, 651.39, -20.41, 299.05, 2, 0)
	MovementLoopAddLocation(NPC, 654.49, -20.42, 298.21, 2, 0)
	MovementLoopAddLocation(NPC, 657.37, -20.42, 300.55, 2, 0)
	MovementLoopAddLocation(NPC, 660.55, -20.43, 307.95, 2, 0)
	MovementLoopAddLocation(NPC, 662.54, -20.46, 311.7, 2, 0)
	MovementLoopAddLocation(NPC, 665.58, -20.44, 318.14, 2, 0)
	MovementLoopAddLocation(NPC, 668.59, -20.44, 324.55, 2, 0)
	MovementLoopAddLocation(NPC, 664.11, -20.44, 327.83, 2, 0)
	MovementLoopAddLocation(NPC, 661.14, -21.44, 329.01, 2, 0)
	MovementLoopAddLocation(NPC, 657.62, -22.29, 330.31, 2, 0)
	MovementLoopAddLocation(NPC, 651.98, -22.31, 330.13, 2, 0)	
	
	
--	MovementLoopAddLocation(NPC, 677.38, -20.51, 324.14, 2, 0)
--	MovementLoopAddLocation(NPC, 663.13, -20.41, 328.4, 2, 0)
--	MovementLoopAddLocation(NPC, 658.72, -22.28, 330.15, 2, 0)
	MovementLoopAddLocation(NPC, 647.09, -22.27, 326.95, 2, 1)
	MovementLoopAddLocation(NPC, 647.09, -22.27, 326.95, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 650.76, -22.29, 328.11, 2, 0)
	MovementLoopAddLocation(NPC, 654.81, -22.29, 327.45, 2, 0)
	MovementLoopAddLocation(NPC, 655.31, -21.47, 323.32, 2, 0)
end


function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2330094)
    UseWidget(door)
end