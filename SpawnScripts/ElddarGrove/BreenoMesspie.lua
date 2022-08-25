--[[
	Script Name	: SpawnScripts/ElddarGrove/BreenoMesspie.lua
	Script Purpose	: Breeno Messpie 
	Script Author	: Dorbin
	Script Date	: 2022.05.01
	Script Notes	:
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
