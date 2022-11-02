--[[
    Script Name    : SpawnScripts/Peatbog_Classic/GuardAndrews.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.02 04:11:29
    Script Purpose : 
                   : 
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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end