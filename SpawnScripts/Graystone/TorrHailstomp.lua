--[[
    Script Name    : SpawnScripts/Graystone/TorrHailstomp.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 04:07:03
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")	 
    	waypoints(NPC)
    end
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)        
    GenericRaceCheckHail(NPC, Spawn)
    end


function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
    FactionCheckCallout(NPC,Spawn,faction)
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 886.62, -23.27, -162.62, 2, 1)
	MovementLoopAddLocation(NPC, 886.62, -23.27, -162.62, 2, 19,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 885.69, -23.23, -164.67, 2, 0)
	MovementLoopAddLocation(NPC, 881.79, -23.23, -169.15, 2, 0)
	MovementLoopAddLocation(NPC, 876.76, -22.56, -177.41, 2, 1)
	MovementLoopAddLocation(NPC, 876.76, -22.56, -177.41, 2, 19,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 876.4, -22.51, -178.03, 2, 0)
	MovementLoopAddLocation(NPC, 871.79, -22.13, -174.11, 2, 0)
	MovementLoopAddLocation(NPC, 868.49, -21.83, -172.84, 2, 0)
	MovementLoopAddLocation(NPC, 861.78, -21.76, -170.66, 2, 0)
	MovementLoopAddLocation(NPC, 862.26, -22.21, -161.92, 2, 1)
	MovementLoopAddLocation(NPC, 862.26, -22.21, -161.92, 2, 19,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 861.52, -21.9, -164.64, 2, 0)
	MovementLoopAddLocation(NPC, 863.14, -21.72, -172.12, 2, 0)
	MovementLoopAddLocation(NPC, 868.96, -21.7, -174.41, 2, 0)
	MovementLoopAddLocation(NPC, 877.36, -22.63, -175.12, 2, 0)
	MovementLoopAddLocation(NPC, 886.12, -23.23, -164.81, 2, 0)
end


