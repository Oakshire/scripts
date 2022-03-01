--[[
	Script Name	: SpawnScripts/GreaterFaydark/PrincessSaphronia.lua
	Script Purpose	: Princess Saphronia 
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

		PlayFlavor(NPC, "princess_saphronia/_exp03/exp03_cty_kelethin/quest/qst_princess_saphronia/princess_saphronia002.mp3", "", "", 3619994345, 1485938345, Spawn)
	AddConversationOption(conversation, "Uh... I think I'll be going now.", "dlg_72_1")
	StartConversation(conversation, NPC, Spawn, "All of these outsiders coming in and out of doors and hailing everyone they see... like we aren't busy enough trying to clean up their mess!  They'll only bring trouble to our city I tell you.  I hope you don't favor their presence here.  We didn't rebuild Kelethin only to see those people cause its destruction again.")
end

