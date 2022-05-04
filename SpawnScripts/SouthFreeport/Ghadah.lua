--[[
    Script Name    : SpawnScripts/SouthFreeport/Ghadah.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 02:03:16
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
--	waypoints(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
GenericEcology2Hail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcology2Callout(NPC, Spawn, faction)
    end

function respawn(NPC)
	spawn(NPC)
end