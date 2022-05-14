--[[
    Script Name    : SpawnScripts/NorthQeynos/LauraIronforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.22 02:04:11
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
      SetTarget(NPC,Spawn)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    SetTarget(NPC,Spawn)
end

function respawn(NPC)
		spawn(NPC)
		end