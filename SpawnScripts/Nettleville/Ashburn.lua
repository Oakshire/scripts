--[[
    Script Name    : SpawnScripts/Nettleville/Ashburn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 01:06:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
    if GetFactionAmount(Spawn,11)>0 then
    if math.random(1,100)<25 then
	GenericGuardHail(NPC, Spawn)
    end        
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 607.63, -26.51, 378.91, 2, 1)
	MovementLoopAddLocation(NPC, 607.63, -26.51, 378.91, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 608.69, -26.49, 377.4, 2, 0)
	MovementLoopAddLocation(NPC, 612.95, -26.41, 376.77, 2, 0)
	MovementLoopAddLocation(NPC, 618.99, -26.11, 376.83, 2, 0)
	MovementLoopAddLocation(NPC, 623.83, -25.87, 379.29, 2, 0)
	MovementLoopAddLocation(NPC, 627.13, -25.69, 381.13, 2, 0)
	MovementLoopAddLocation(NPC, 631.35, -25.21, 381.83, 2, 0)
	MovementLoopAddLocation(NPC, 635.66, -24.92, 381.54, 2, 0)
	MovementLoopAddLocation(NPC, 642.03, -24.79, 378.93, 2, 0)
	MovementLoopAddLocation(NPC, 646.02, -24.73, 376.58, 2, 1)
	MovementLoopAddLocation(NPC, 646.02, -24.73, 376.58, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 649.88, -24.74, 371.89, 2, 0)
	MovementLoopAddLocation(NPC, 653.69, -24.71, 369.31, 2, 0)
	MovementLoopAddLocation(NPC, 656.3, -24.65, 368.79, 2, 0)
	MovementLoopAddLocation(NPC, 660.06, -24.58, 366.74, 2, 0)
	MovementLoopAddLocation(NPC, 663.02, -24.61, 364.42, 2, 0)
	MovementLoopAddLocation(NPC, 667.15, -24.68, 361.62, 2, 1)
	MovementLoopAddLocation(NPC, 667.15, -24.68, 361.62, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 671.58, -24.77, 358.76, 2, 0)
	MovementLoopAddLocation(NPC, 675.61, -24.74, 356.27, 2, 1)
	MovementLoopAddLocation(NPC, 675.61, -24.74, 356.27, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 670.58, -24.77, 358.47, 2, 0)
	MovementLoopAddLocation(NPC, 665.4, -24.65, 362.59, 2, 0)
	MovementLoopAddLocation(NPC, 658.85, -24.64, 366.3, 2, 0)
	MovementLoopAddLocation(NPC, 653.45, -24.71, 369.08, 2, 0)
	MovementLoopAddLocation(NPC, 646.26, -24.73, 375.2, 2, 0)
	MovementLoopAddLocation(NPC, 641.38, -24.81, 378.81, 2, 0)
	MovementLoopAddLocation(NPC, 635.13, -24.94, 382.64, 2, 0)
	MovementLoopAddLocation(NPC, 627.53, -25.63, 381.1, 2, 1)
	MovementLoopAddLocation(NPC, 627.53, -25.63, 381.1, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 621.69, -25.94, 377.71, 2, 0)
	MovementLoopAddLocation(NPC, 617.5, -26.22, 376.84, 2, 0)
	MovementLoopAddLocation(NPC, 610.66, -26.48, 377.8, 2, 0)
	MovementLoopAddLocation(NPC, 604.63, -26.5, 378.64, 2, 0)
	MovementLoopAddLocation(NPC, 596.56, -26.47, 380.26, 2, 0)
	MovementLoopAddLocation(NPC, 592.09, -26.51, 386.19, 2, 1)
	MovementLoopAddLocation(NPC, 592.09, -26.51, 386.19, 2, 35,"Action")
	MovementLoopAddLocation(NPC, 596, -26.46, 380.12, 2, 0)
end




function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "listen", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "attention", 0, 0, Spawn)
    end
end   

