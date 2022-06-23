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
	MovementLoopAddLocation(NPC, 677.38, -20.51, 324.14, 2, 0)
	MovementLoopAddLocation(NPC, 663.13, -20.41, 328.4, 2, 0)
	MovementLoopAddLocation(NPC, 658.72, -22.28, 330.15, 2, 0)
	MovementLoopAddLocation(NPC, 647.09, -22.27, 326.95, 2, 1)
	MovementLoopAddLocation(NPC, 647.09, -22.27, 326.95, 2, 55,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 650.76, -22.29, 328.11, 2, 0)
	MovementLoopAddLocation(NPC, 654.81, -22.29, 327.45, 2, 0)
	MovementLoopAddLocation(NPC, 655.31, -21.47, 323.32, 2, 0)
end


