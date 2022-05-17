--[[
    Script Name    : SpawnScripts/SouthQeynos/Galla.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.16 08:05:44
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
		CheckFaction(NPC, Spawn, "Qeynos")
	end	



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end

function respawn(NPC)
	spawn(NPC)
end