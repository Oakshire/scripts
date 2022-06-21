--[[
    Script Name    : SpawnScripts/Nettleville/DuncanAirth.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 12:06:19
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end