--[[
    Script Name    : SpawnScripts/NorthQeynos/Thorson.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.04 03:11:19
    Script Purpose : 
                   : 
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
    NonCitizen(NPC,Spawn)    
	if math.random(0, 100) <= 25 and GetFactionAmount(Spawn,11) > 20000 then
		FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
		CheckFaction(NPC, Spawn, "Qeynos")
		
	else
		CheckFaction(NPC, Spawn, "Qeynos")
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end

