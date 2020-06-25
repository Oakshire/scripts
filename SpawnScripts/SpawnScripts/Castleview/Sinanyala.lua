--[[
	Script Name	: SpawnScripts/Castleview/Sinanyala.lua
	Script Purpose	: Sinanyala <Guard>
	Script Author	: Scatman
	Script Date	: 2009.09.25
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	CheckFaction(NPC, Spawn, "Qeynos")
end

function LeaveRange(NPC, SPawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
