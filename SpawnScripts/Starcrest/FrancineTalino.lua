--[[
    Script Name    : SpawnScripts/Starcrest/FrancineTalino.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.29 02:06:56
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
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
if GetFaction(Spawn,11)<0 then
    FactionCheckingCallout(NPC,Spawn,faction)
    end
end

function Door(NPC,Spawn)
    local door = GetSpawn(NPC, 2340077)
    UseWidget(door)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 824.68, -20.26, 279.38, 2, 1)
	MovementLoopAddLocation(NPC, 824.68, -20.26, 279.38, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 823.85, -20.26, 278.28, 2, 0)
	MovementLoopAddLocation(NPC, 819.65, -20.29, 275.36, 2, 0)
	MovementLoopAddLocation(NPC, 814.67, -20.31, 276.78, 2, 0)
	MovementLoopAddLocation(NPC, 813.11, -20.31, 277.67, 2, 0)
	MovementLoopAddLocation(NPC, 810.22, -20.31, 284.8, 2, 1)
	MovementLoopAddLocation(NPC, 810.22, -20.31, 284.8, 2, 45,"Action")
	MovementLoopAddLocation(NPC, 803.96, -20.43, 287.85, 2, 0)
	MovementLoopAddLocation(NPC, 802.67, -20.42, 290.98, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 808.3, -20.45, 293.68, 2, 0)
	MovementLoopAddLocation(NPC, 810.25, -20.45, 292.61, 2, 0)
	MovementLoopAddLocation(NPC, 814, -20.45, 292.81, 2, 0)
	MovementLoopAddLocation(NPC, 815.94, -20.45, 289.67, 2, 0)
	MovementLoopAddLocation(NPC, 821.42, -20.45, 287.7, 2, 0)
	MovementLoopAddLocation(NPC, 821.6, -20.45, 287.32, 2, 1)
	MovementLoopAddLocation(NPC, 821.6, -20.45, 287.32, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 822.03, -20.45, 286.39, 2, 0)
	MovementLoopAddLocation(NPC, 820.72, -20.45, 287.62, 2, 0)
	MovementLoopAddLocation(NPC, 815.99, -20.45, 291.18, 2, 0)
	MovementLoopAddLocation(NPC, 814.36, -20.45, 292.72, 2, 0)
	MovementLoopAddLocation(NPC, 809.79, -20.45, 292.87, 2, 0)
	MovementLoopAddLocation(NPC, 808.21, -20.45, 293.71, 2, 2,"Door")
	MovementLoopAddLocation(NPC, 802.65, -20.41, 291.36, 2, 0)
	MovementLoopAddLocation(NPC, 796.46, -20.43, 283.54, 2, 1)
	MovementLoopAddLocation(NPC, 796.46, -20.43, 283.54, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 795.11, -20.46, 283.91, 2, 0)
	MovementLoopAddLocation(NPC, 797.19, -20.48, 286.09, 2, 0)
	MovementLoopAddLocation(NPC, 805.72, -20.47, 287.28, 2, 0)
	MovementLoopAddLocation(NPC, 807.06, -20.4, 284.17, 2, 0)
	MovementLoopAddLocation(NPC, 813.22, -20.34, 273.16, 2, 0)
	MovementLoopAddLocation(NPC, 823.32, -20.26, 276.61, 2, 0)
	MovementLoopAddLocation(NPC, 825.22, -20.27, 280.49, 2, 0)
end


