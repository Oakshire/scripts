--[[
    Script Name    : SpawnScripts/Nettleville/Fantalosia.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.22 05:06:34
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
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
if GetFactionAmount(Spawn,11)<0 then
    FaceTarget (NPC,Spawn)
    FactionChecking(NPC,Spawn,faction)
    end
end

function FaceStreet(NPC)
	SpawnSet(NPC, "heading", "250")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 617.37, -26.26, 378.15, 2, 5)
	MovementLoopAddLocation(NPC, 617.37, -26.26, 378.15, 2, 50,"Action")
	MovementLoopAddLocation(NPC, 616.74, -26.3, 379.03, 2, 0)
	MovementLoopAddLocation(NPC, 617.83, -26.21, 377.28, 2, 0)
	MovementLoopAddLocation(NPC, 619.65, -26.08, 377.54, 2, 0)
	MovementLoopAddLocation(NPC, 621.72, -26.03, 379.25, 2, 0)
	MovementLoopAddLocation(NPC, 626.41, -25.83, 382.04, 2, 0)
	MovementLoopAddLocation(NPC, 627.28, -25.82, 384.49, 2, 5)
	MovementLoopAddLocation(NPC, 627.28, -25.82, 384.49, 2, 50,"Action")
	MovementLoopAddLocation(NPC, 627.9, -25.68, 383.16, 2, 0)
	MovementLoopAddLocation(NPC, 625.55, -25.89, 381.74, 2, 0)
	MovementLoopAddLocation(NPC, 621.22, -26.08, 379.36, 2, 0)
	MovementLoopAddLocation(NPC, 617.36, -25.81, 367.66, 2, 0)
	MovementLoopAddLocation(NPC, 616.31, -25.47, 365.34, 2, 5)
	MovementLoopAddLocation(NPC, 616.31, -25.47, 365.34, 2, 52,"Action")
	MovementLoopAddLocation(NPC, 617.19, -25.91, 368.38, 2, 0)
	MovementLoopAddLocation(NPC, 614.55, -26.37, 377.5, 2, 0)
	MovementLoopAddLocation(NPC, 607.1, -26.51, 378.98, 2, 0)
	MovementLoopAddLocation(NPC, 601.02, -26.49, 379.26, 2, 0)
	MovementLoopAddLocation(NPC, 591.49, -26.49, 380.54, 2, 0)
	MovementLoopAddLocation(NPC, 576.28, -26.63, 380.71, 2, 0)
	MovementLoopAddLocation(NPC, 572.38, -26.52, 379.81, 2, 1,"FaceStreet")
	MovementLoopAddLocation(NPC, 572.38, -26.52, 379.81, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 572.38, -26.52, 379.81, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 573.08, -26.52, 379.27, 2, 0)
	MovementLoopAddLocation(NPC, 575.34, -26.54, 379.97, 2, 0)
	MovementLoopAddLocation(NPC, 582.35, -26.95, 382.21, 2, 0)
	MovementLoopAddLocation(NPC, 592.01, -26.22, 377.16, 2, 0)
	MovementLoopAddLocation(NPC, 598.12, -26.22, 375.95, 2, 0)
	MovementLoopAddLocation(NPC, 612.6, -26.38, 373.1, 2, 0)
end


function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end
end  