--[[
    Script Name    : SpawnScripts/QeynosHarbor/Yarwick.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:17
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn)
        NonCitizen(NPC,Spawn) 
		CheckFaction(NPC, Spawn, "Qeynos")
	end


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end