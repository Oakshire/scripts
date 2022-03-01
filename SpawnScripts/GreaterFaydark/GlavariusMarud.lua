--[[
	Script Name	: SpawnScripts/GreaterFaydark/GlavariusMarud.lua
	Script Purpose	: Glavarius Marud 
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

		PlayFlavor(NPC, "glavarius_marud/_exp03/exp03_rgn_greater_faydark/glavarius_marud/glavarius_marud000.mp3", "", "", 4001683736, 773203562, Spawn)
	AddConversationOption(conversation, "A little pretentious, aren't we?  Goodbye.", "dlg_44_1")
	StartConversation(conversation, NPC, Spawn, "Leave me be.  If those Koada'Dal of Felwithe, those... 'New Tunarians', do not believe they need my services as the royal oracle any longer, then I shall just decline to use my abilities for anyone.  Hmph.")
end

