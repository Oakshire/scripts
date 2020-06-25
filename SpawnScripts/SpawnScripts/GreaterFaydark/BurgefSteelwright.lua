--[[
	Script Name	: SpawnScripts/GreaterFaydark/BurgefSteelwright.lua
	Script Purpose	: Burgef Steelwright 
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
	conversation = CreateConversation()

		PlayFlavor(NPC, "burgef_steelwright/_exp03/exp03_rgn_greater_faydark/burgef_steelwright/burgef001.mp3", "", "", 2532462337, 1199688824, Spawn)
	AddConversationOption(conversation, "I'll leave you alone.", "dlg_4_1")
	StartConversation(conversation, NPC, Spawn, "Can't stop workin'! These 'ere orcs will punish the others for it!")
end

