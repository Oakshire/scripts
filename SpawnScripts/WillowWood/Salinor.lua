--[[
	Script Name	: SpawnScripts/WillowWood/Salinor.lua
	Script Purpose	: Salinor <Guard>
	Script Author	: Scatman
	Script Date	: 2009.09.15
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
    if math.random(1, 100) <= 30 then
	GenericGuardHail(NPC,Spawn)
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end
