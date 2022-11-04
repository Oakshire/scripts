--[[
	Script Name	: SpawnScripts/QeynosHarbor/Rothun.lua
	Script Purpose	: Rothun <Guard>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
		CheckFaction(NPC, Spawn, "Qeynos")	
	if math.random(0, 100) <= 25 and GetFactionAmount(Spawn,11)>20000 then
		FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end


