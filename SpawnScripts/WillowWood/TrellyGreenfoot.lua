--[[
	Script Name	: SpawnScripts/WillowWood/TrellyGreenfoot.lua
	Script Purpose	: Trelly Greenfoot 
	Script Author	: Scatman
	Script Date	: 2009.09.15 / Recreated using Ecology VO  04.16.2022 -Dorbin
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)	
	MovementLoopAddLocation(NPC, 809.94, -20.32, -622.21, 2)
	MovementLoopAddLocation(NPC, 825.57, -20.47, -622.01, 2, 1)
	MovementLoopAddLocation(NPC, 825.57, -20.47, -622.01, 2, math.random(10, 15),"Action")
	MovementLoopAddLocation(NPC, 827.49, -20.27, -615.30, 2)
	MovementLoopAddLocation(NPC, 833.85, -21.46, -611.10, 2, 1)
	MovementLoopAddLocation(NPC, 833.85, -21.46, -611.10, 2, math.random(20, 90),"Action")
	MovementLoopAddLocation(NPC, 835.92, -21.04, -606.67, 2)
	MovementLoopAddLocation(NPC, 838.36, -20.84, -604.75, 2)
	MovementLoopAddLocation(NPC, 844.63, -21.09, -605.69, 2)
	MovementLoopAddLocation(NPC, 851.91, -20.38, -609.75, 2)
	MovementLoopAddLocation(NPC, 860.75, -19.17, -609.59, 2)
	MovementLoopAddLocation(NPC, 870.01, -18.46, -603.19, 2, 1)
	MovementLoopAddLocation(NPC, 870.01, -18.46, -603.19, 2, math.random(15, 60),"Action")
	MovementLoopAddLocation(NPC, 862.12, -18.97, -606.58, 2)
	MovementLoopAddLocation(NPC, 853.15, -20.23, -610.54, 2)
	MovementLoopAddLocation(NPC, 849.14, -21.05, -618.29, 2, 1)
	MovementLoopAddLocation(NPC, 849.14, -21.05, -618.29, 2, math.random(25, 120),"Action")
	MovementLoopAddLocation(NPC, 844.49, -21.70, -625.31, 2)
	MovementLoopAddLocation(NPC, 841.65, -22.48, -633.37, 2)
	MovementLoopAddLocation(NPC, 844.45, -21.69, -645.01, 2, 1)
	MovementLoopAddLocation(NPC, 844.45, -21.69, -645.01, 2, math.random(15, 60),"Action")
	MovementLoopAddLocation(NPC, 837.38, -21.06, -646.00, 2)
	MovementLoopAddLocation(NPC, 824.73, -20.57, -650.46, 2)
	MovementLoopAddLocation(NPC, 812.28, -21.11, -650.56, 2)
	MovementLoopAddLocation(NPC, 806.82, -21.08, -631.67, 2, 1)
	MovementLoopAddLocation(NPC, 806.82, -21.08, -631.67, 2, math.random(15, 35),"Action")
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    end
end 

