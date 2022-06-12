--[[
    Script Name    : SpawnScripts/QeynosHarbor/Loomilias.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 03:06:14
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
    
   
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 701.29, -20.62, -10.6, 2, 15)
	MovementLoopAddLocation(NPC, 735.35, -21.02, -12.61, 2, 1)
	MovementLoopAddLocation(NPC, 735.35, -21.02, -12.61, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 735.35, -21.02, -12.61, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 743.34, -21.04, -7.07, 2, 0)
	MovementLoopAddLocation(NPC, 752.63, -20.64, 10.8, 2, 0)
	MovementLoopAddLocation(NPC, 752.9, -20.64, 11.5, 2, 0)
	MovementLoopAddLocation(NPC, 753.04, -20.64, 10.79, 2, 1)
	MovementLoopAddLocation(NPC, 753.04, -20.64, 10.79, 2, 13,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 753.04, -20.64, 10.79, 2, 13,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 750.79, -21.09, -23.06, 2, 0)
	MovementLoopAddLocation(NPC, 745.82, -21.31, -29.28, 2, 0)
	MovementLoopAddLocation(NPC, 745.24, -21.36, -30.16, 2, 1)
	MovementLoopAddLocation(NPC, 745.24, -21.36, -30.16, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 745.24, -21.36, -30.16, 2, 30,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 747.09, -21.34, -31.28, 2, 0)
	MovementLoopAddLocation(NPC, 765.01, -20.69, -33.81, 2, 0)
	MovementLoopAddLocation(NPC, 765.73, -20.68, -33.74, 2, 1)
	MovementLoopAddLocation(NPC, 765.73, -20.68, -33.74, 2, 15,"Drink")
	MovementLoopAddLocation(NPC, 765.73, -20.68, -33.74, 2, 15,"Drink")
	MovementLoopAddLocation(NPC, 764.96, -20.73, -34.49, 2, 0)
	MovementLoopAddLocation(NPC, 705.33, -20.85, -61.56, 2, 12)
	MovementLoopAddLocation(NPC, 705.63, -20.88, -61.22, 2, 11)
	MovementLoopAddLocation(NPC, 705.63, -20.88, -61.22, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 699.84, -21.06, -79.04, 2, 10)
	MovementLoopAddLocation(NPC, 699.84, -21.06, -79.04, 2, 0)
	MovementLoopAddLocation(NPC, 707.04, -20.8, -63.52, 2, 25)
	MovementLoopAddLocation(NPC, 715.63, -21.4, -51.08, 2, 0)
	MovementLoopAddLocation(NPC, 714.17, -21.25, -38.14, 2, 0)
	MovementLoopAddLocation(NPC, 702.26, -20.64, -11.06, 2, 0)
	MovementLoopAddLocation(NPC, 703.74, -20.64, -11.07, 2, 1)
	MovementLoopAddLocation(NPC, 703.74, -20.64, -11.07, 2, 60,"EcologyEmotes")
end


function Drink(NPC)
    PlayAnimation(NPC,11422)
end


