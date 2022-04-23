--[[
    Script Name    : SpawnScripts/NorthQeynos/NicolaDering.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.22 05:04:03
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
FactionCheckingCallout(NPC, Spawn, faction)
end

function respawn(NPC)
		spawn(NPC)
		end