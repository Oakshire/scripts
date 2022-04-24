--[[
    Script Name    : SpawnScripts/NorthQeynos/MacMurris.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 12:04:53
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


function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end