--[[
	Script Name		: SpawnScripts/TheElddarGrove/NalonMesspie.lua
	Script Purpose	: Nalon Messpie
	Script Author	: Dorbin
	Script Date		: 2022.05.01
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericRaceCheckHail(NPC, Spawn)
end

function InRange(NPC,Spawn)
    GenericRaceCheckCallout(NPC, Spawn)
    end
    
function respawn(NPC)
		spawn(NPC)
	end
