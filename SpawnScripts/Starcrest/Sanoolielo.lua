--[[
    Script Name    : SpawnScripts/Starcrest/Sanoolielo.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.28 03:06:35
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
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

function FaceStreet(NPC)
	SpawnSet(NPC, "heading", "143")
end

function FaceStreet2(NPC)
	SpawnSet(NPC, "heading", "296")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 802.74, -25.85, 313.9, 2, 1,"FaceStreet2")
	MovementLoopAddLocation(NPC, 802.74, -25.85, 313.9, 2, 28,"Action")
	MovementLoopAddLocation(NPC, 803.13, -25.74, 315.47, 2, 0)
	MovementLoopAddLocation(NPC, 805, -25.78, 317.53, 2, 0)
	MovementLoopAddLocation(NPC, 808.44, -25.89, 315.51, 2, 0)
	MovementLoopAddLocation(NPC, 809.31, -25.77, 313.72, 2, 0)
	MovementLoopAddLocation(NPC, 807.53, -24.35, 309.12, 2, 0)
	MovementLoopAddLocation(NPC, 804.44, -22.16, 305.26, 2, 0)
	MovementLoopAddLocation(NPC, 800.86, -20.25, 302.22, 2, 0)
	MovementLoopAddLocation(NPC, 797.13, -20.41, 297.81, 2, 0)
	MovementLoopAddLocation(NPC, 796.92, -20.45, 296.06, 2, 0)
	MovementLoopAddLocation(NPC, 793.71, -20.52, 293.59, 2, 0)
	MovementLoopAddLocation(NPC, 786.96, -20.52, 292.01, 2, 0)
	MovementLoopAddLocation(NPC, 779.71, -20.39, 292.23, 2, 0)
	MovementLoopAddLocation(NPC, 771.79, -20.33, 291.77, 2, 0)
	MovementLoopAddLocation(NPC, 763.82, -20.32, 289.38, 2, 0)
	MovementLoopAddLocation(NPC, 743.92, -20.44, 277.1, 2, 0)
	MovementLoopAddLocation(NPC, 732.48, -20.42, 279.83, 2, 0)
	MovementLoopAddLocation(NPC, 725.77, -20.43, 290.44, 2, 0)
	MovementLoopAddLocation(NPC, 728.81, -20.47, 294.96, 2, 0)
	MovementLoopAddLocation(NPC, 729.99, -20.47, 294.56, 2, 1,"FaceStreet")
	MovementLoopAddLocation(NPC, 729.99, -20.47, 294.56, 2, 28,"Action")
	MovementLoopAddLocation(NPC, 729.99, -20.47, 294.56, 2, 0)
	MovementLoopAddLocation(NPC, 728.81, -20.47, 294.96, 2, 0)
	MovementLoopAddLocation(NPC, 725.77, -20.43, 290.44, 2, 0)
	MovementLoopAddLocation(NPC, 732.48, -20.42, 279.83, 2, 0)
	MovementLoopAddLocation(NPC, 743.92, -20.44, 277.1, 2, 0)
	MovementLoopAddLocation(NPC, 763.82, -20.32, 289.38, 2, 0)
	MovementLoopAddLocation(NPC, 771.79, -20.33, 291.77, 2, 0)
	MovementLoopAddLocation(NPC, 779.71, -20.39, 292.23, 2, 0)
	MovementLoopAddLocation(NPC, 786.96, -20.52, 292.01, 2, 0)
	MovementLoopAddLocation(NPC, 793.71, -20.52, 293.59, 2, 0)
	MovementLoopAddLocation(NPC, 796.92, -20.45, 296.06, 2, 0)
	MovementLoopAddLocation(NPC, 797.13, -20.41, 297.81, 2, 0)
	MovementLoopAddLocation(NPC, 800.86, -20.25, 302.22, 2, 0)
	MovementLoopAddLocation(NPC, 804.44, -22.16, 305.26, 2, 0)
	MovementLoopAddLocation(NPC, 807.53, -24.35, 309.12, 2, 0)
	MovementLoopAddLocation(NPC, 809.31, -25.77, 313.72, 2, 0)
	MovementLoopAddLocation(NPC, 808.44, -25.89, 315.51, 2, 0)
	MovementLoopAddLocation(NPC, 805, -25.78, 317.53, 2, 0)
	MovementLoopAddLocation(NPC, 803.13, -25.74, 315.47, 2, 0)
end


