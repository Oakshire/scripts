--[[
    Script Name    : SpawnScripts/Antonica/Hubbard.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 06:07:34
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
	if math.random(0, 100) <= 25 then
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
