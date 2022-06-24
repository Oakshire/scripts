--[[
    Script Name    : SpawnScripts/Nettleville/Sanooielo.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 12:06:35
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

function FaceStreet(NPC)
	SpawnSet(NPC, "heading", "289")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 655.09, -20.42, 304.56, 2, 1,"FaceStreet")
	MovementLoopAddLocation(NPC, 655.09, -20.42, 304.56, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 655.09, -20.42, 304.56, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 657.15, -20.42, 301.78, 2, 0)
	MovementLoopAddLocation(NPC, 656.52, -20.42, 298.86, 2, 0)
	MovementLoopAddLocation(NPC, 654.3, -20.42, 299.03, 2, 0)
	MovementLoopAddLocation(NPC, 648.47, -20.46, 297.16, 2, 0)
	MovementLoopAddLocation(NPC, 641.88, -20.59, 300.29, 2, 0)
	MovementLoopAddLocation(NPC, 636.4, -20.67, 302.89, 2, 0)
	MovementLoopAddLocation(NPC, 629.07, -20.62, 307.18, 2, 0)
	MovementLoopAddLocation(NPC, 623.98, -20.53, 310.56, 2, 0)
	MovementLoopAddLocation(NPC, 612.92, -20.6, 322.49, 2, 1)
	MovementLoopAddLocation(NPC, 612.92, -20.6, 322.49, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 605.71, -20.66, 334.49, 2, 0)
	MovementLoopAddLocation(NPC, 601.62, -20.76, 343.68, 2, 1)
	MovementLoopAddLocation(NPC, 601.62, -20.76, 343.68, 2, 25,"Action")
	MovementLoopAddLocation(NPC, 602.79, -20.81, 345.99, 2, 0)
	MovementLoopAddLocation(NPC, 604.14, -20.78, 338.99, 2, 0)
	MovementLoopAddLocation(NPC, 606.87, -20.69, 329.69, 2, 0)
	MovementLoopAddLocation(NPC, 613.54, -20.57, 320.71, 2, 0)
	MovementLoopAddLocation(NPC, 620.37, -20.49, 312.91, 2, 0)
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 1)
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 15,"Action")
	MovementLoopAddLocation(NPC, 640.32, -20.64, 300.67, 2, 0)
	MovementLoopAddLocation(NPC, 648.12, -20.47, 297.01, 2, 0)
	MovementLoopAddLocation(NPC, 649.85, -20.43, 296.58, 2, 0)
	MovementLoopAddLocation(NPC, 655.82, -20.42, 298.78, 2, 0)
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

