--[[
	Script Name	: SpawnScripts/SouthQeynos/Krelal.lua
	Script Purpose	: Krelal <Guard>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
		if math.random(1, 100) <= 20 and GetFactionAmount(Spawn,11) >0 then
		GenericGuardHail(NPC, Spawn)
	end
end	

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		GenericGuardHail(NPC, Spawn)
	end
	

