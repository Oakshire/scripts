--[[
	Script Name	: SpawnScripts/SouthQeynos/BellengeretheThree.lua
	Script Purpose	: Bellengere the Three 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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
	PlayFlavor(NPC, "voiceover/english/bellengere_the_three/qey_south/bellengere_thethree000.mp3", "", "", 1497048439, 2872945474, Spawn)
	AddConversationOption(conversation, "That is definitely something to ponder.  Thank you for your insight.", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "If knowledge is power, and power corrupts, then it is only logical to presume that knowledge corrupts.  Rubbish, I say.  The fundamental flaw in this theory is that power corrupts, whereas it should be stated that it CAN corrupt.  This is the most important lesson to learn when using the arcane forces... as you use its power, it can as easily use you.  Take heed of this warning, friend.")
end

