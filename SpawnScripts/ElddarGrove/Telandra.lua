--[[
	Script Name	: SpawnScripts/ElddarGrove/Telandra.lua
	Script Purpose	: Telandra 
	Script Author	: Dorbin
	Script Date	: 5.1.2022
	Script Notes	: 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end
