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
	MovementLoopAddLocation(NPC, 588.51, -26.53, 385.69, 2, 1)
	MovementLoopAddLocation(NPC, 588.51, -26.53, 385.69, 2, 40,"Action")
	MovementLoopAddLocation(NPC, 592.42, -26.51, 381.08, 2, 0)
	MovementLoopAddLocation(NPC, 595.44, -26.35, 378.6, 2, 0)
	MovementLoopAddLocation(NPC, 603.92, -26.48, 377.55, 2, 0)
	MovementLoopAddLocation(NPC, 607.61, -26.47, 375.64, 2, 1)
	MovementLoopAddLocation(NPC, 607.61, -26.47, 375.64, 2, 22,"Action")
	MovementLoopAddLocation(NPC, 607.28, -26.46, 374.52, 2, 0)
	MovementLoopAddLocation(NPC, 615.47, -26.29, 375.82, 2, 0)
	MovementLoopAddLocation(NPC, 623.46, -25.65, 375.73, 2, 0)
	MovementLoopAddLocation(NPC, 636.75, -24.89, 381.29, 2, 0)
	MovementLoopAddLocation(NPC, 640.28, -24.82, 379.52, 2, 0)
	MovementLoopAddLocation(NPC, 645.37, -24.74, 375.13, 2, 0)
	MovementLoopAddLocation(NPC, 650.64, -24.74, 371.28, 2, 0)
	MovementLoopAddLocation(NPC, 657.54, -24.66, 366.66, 2, 0)
	MovementLoopAddLocation(NPC, 666.05, -24.69, 361.52, 2, 0)
	MovementLoopAddLocation(NPC, 677.02, -24.68, 354.26, 2, 1)
	MovementLoopAddLocation(NPC, 677.02, -24.68, 354.26, 2, 55,"Action")
	MovementLoopAddLocation(NPC, 666.05, -24.69, 361.52, 2, 0)
	MovementLoopAddLocation(NPC, 657.54, -24.66, 366.66, 2, 0)
	MovementLoopAddLocation(NPC, 650.64, -24.74, 371.28, 2, 0)
	MovementLoopAddLocation(NPC, 645.37, -24.74, 375.13, 2, 0)
	MovementLoopAddLocation(NPC, 640.28, -24.82, 379.52, 2, 0)
	MovementLoopAddLocation(NPC, 636.75, -24.89, 381.29, 2, 0)
	MovementLoopAddLocation(NPC, 623.46, -25.65, 375.73, 2, 0)
	MovementLoopAddLocation(NPC, 615.47, -26.29, 375.82, 2, 0)
	MovementLoopAddLocation(NPC, 606.58, -26.49, 376.59, 2, 0)
	MovementLoopAddLocation(NPC, 606.53, -26.49, 377.45, 2, 0)
	MovementLoopAddLocation(NPC, 603.92, -26.48, 377.55, 2, 0)
	MovementLoopAddLocation(NPC, 595.44, -26.35, 378.6, 2, 0)
	MovementLoopAddLocation(NPC, 592.42, -26.51, 381.08, 2, 0)
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

