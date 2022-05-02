--[[
	Script Name	: SpawnScripts/ElddarGrove/DelmaMesspie.lua
	Script Purpose	: Delma Messpie 
	Script Author	: Dorbin
	Script Date	: 2022.05.01
	Script Notes	:
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
    GenericEcologyCallout(NPC, Spawn, faction)
    end

