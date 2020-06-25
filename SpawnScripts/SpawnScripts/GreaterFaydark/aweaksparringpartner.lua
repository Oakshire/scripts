--[[
	Script Name	: SpawnScripts/GreaterFaydark/aweaksparringpartner.lua
	Script Purpose	: a weak sparring partner 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "You can attack me whenever you're ready. You can do that by double-clicking me, by right clicking me and selecting "attack," by using an offensive ability while you have me targeted, or by turning on auto attack by pressing the ~ key while you have me targeted.", "", 1689589577, 4560189, Spawn)
end

