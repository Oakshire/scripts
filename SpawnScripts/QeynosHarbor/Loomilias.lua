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
	MovementLoopAddLocation(NPC, 702.3, -20.64, -11.22, 2, 1,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 702.3, -20.64, -11.22, 2, 12,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 704.44, -21.07, -39.61, 2, 0)
	MovementLoopAddLocation(NPC, 704.88, -20.84, -61.56, 2, 0)
	MovementLoopAddLocation(NPC, 705.06, -20.83, -61.69, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 728.65, -21.39, -35.65, 2, 0)
	MovementLoopAddLocation(NPC, 730.79, -21.39, -35.6, 2, 0)
	MovementLoopAddLocation(NPC, 730.79, -21.39, -35.6, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 730.79, -21.39, -35.6, 2, 0)
	MovementLoopAddLocation(NPC, 752.37, -20.64, 9.98, 2, 0)
	MovementLoopAddLocation(NPC, 752.3, -20.64, 9.54, 2, 60)
	MovementLoopAddLocation(NPC, 761.57, -20.91, -36.98, 2, 0)
	MovementLoopAddLocation(NPC, 750.72, -21.4, -44.95, 2, 0)
	MovementLoopAddLocation(NPC, 716.82, -21.21, -37.55, 2, 0)
	MovementLoopAddLocation(NPC, 701.16, -20.57, -10.07, 2, 0)
	MovementLoopAddLocation(NPC, 701.45, -20.61, -10.42, 2, 0)
	MovementLoopAddLocation(NPC, 701.16, -20.57, -10.07, 2, 0)
	MovementLoopAddLocation(NPC, 716.82, -21.21, -37.55, 2, 0)
	MovementLoopAddLocation(NPC, 750.72, -21.4, -44.95, 2, 0)
	MovementLoopAddLocation(NPC, 761.57, -20.91, -36.98, 2, 0)
	MovementLoopAddLocation(NPC, 752.3, -20.64, 9.54, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 730.79, -21.39, -35.6, 2, 15)
	MovementLoopAddLocation(NPC, 728.65, -21.39, -35.65, 2, 0)
	MovementLoopAddLocation(NPC, 705.06, -20.83, -61.69, 2, 35,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 704.88, -20.84, -61.56, 2, 0)
	MovementLoopAddLocation(NPC, 704.44, -21.07, -39.61, 2, 25)
	MovementLoopAddLocation(NPC, 702.3, -20.64, -11.22, 2, 0)
end


