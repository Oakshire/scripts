--[[
    Script Name    : SpawnScripts/Graystone/DaisyRockanger.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.07 06:07:02
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
    GenericEcologyHail(NPC, Spawn, faction)
    end


function InRange(NPC, Spawn) 
if GetFactionAmount(Spawn,11)<0 then
    FactionCheckCallout(NPC,Spawn,faction)
end
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 884.81, -23.6, -176.81, 2, 1)
	MovementLoopAddLocation(NPC, 884.81, -23.6, -176.81, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 885.38, -23.6, -177.34, 2, 0)
	MovementLoopAddLocation(NPC, 883.3, -23.26, -178.17, 2, 0)
	MovementLoopAddLocation(NPC, 880.56, -22.9, -178.25, 2, 0)
	MovementLoopAddLocation(NPC, 872.09, -22.57, -170.09, 2, 1)
	MovementLoopAddLocation(NPC, 872.09, -22.57, -170.09, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 871.17, -22.44, -170.79, 2, 0)
	MovementLoopAddLocation(NPC, 868.47, -22.38, -170.22, 2, 0)
	MovementLoopAddLocation(NPC, 865.5, -22.07, -168.11, 2, 0)
	MovementLoopAddLocation(NPC, 863.98, -22.1, -166.73, 2, 0)
	MovementLoopAddLocation(NPC, 863.64, -22.27, -164.23, 2, 1)
	MovementLoopAddLocation(NPC, 863.64, -22.27, -164.23, 2, 25,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 863.2, -22.26, -163.57, 2, 0)
	MovementLoopAddLocation(NPC, 864.42, -22.12, -167.11, 2, 0)
	MovementLoopAddLocation(NPC, 866.28, -22.09, -168.67, 2, 0)
	MovementLoopAddLocation(NPC, 869.86, -22.47, -169.82, 2, 1)
	MovementLoopAddLocation(NPC, 869.86, -22.47, -169.82, 2, 16,"EcologyEmotes")
	MovementLoopAddLocation(NPC, 874.32, -22.36, -176.51, 2, 0)
	MovementLoopAddLocation(NPC, 879.38, -22.92, -176.88, 2, 0)
	MovementLoopAddLocation(NPC, 881.53, -23.01, -177.58, 2, 0)
end


