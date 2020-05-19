--[[
	Script Name	: SpawnScripts/FrostfangSea/GurthaMcPherson.lua
	Script Purpose	: Gurtha McPherson <Armor & Weapons>
	Script Author	: John Adams
	Script Date	: 2013.03.19
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

	PlayFlavor(NPC, "", "I'm selling some armor and weapons that you may find useful.", "agree", 1689589577, 4560189, Spawn)
end

