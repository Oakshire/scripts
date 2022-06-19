--[[
    Script Name    : SpawnScripts/NorthFreeport/MordinRageblade.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 03:06:21
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    waypoints(NPC)
end

function hailed(NPC, Spawn)
GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericRaceCheckCallout(NPC, Spawn, faction)
end

function respawn(NPC)
	spawn(NPC)
end