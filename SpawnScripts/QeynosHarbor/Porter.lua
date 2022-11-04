--[[
	Script Name	: SpawnScripts/QeynosHarbor/Porter.lua
	Script Purpose	: Porter <Guard>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
		CheckFaction(NPC, Spawn, "Qeynos")
	    NonCitizen(NPC,Spawn)    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end
