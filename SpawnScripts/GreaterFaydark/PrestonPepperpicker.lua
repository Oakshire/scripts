--[[
	Script Name	: SpawnScripts/GreaterFaydark/PrestonPepperpicker.lua
	Script Purpose	: Preston Pepperpicker <Picker of Peppers>
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

		PlayFlavor(NPC, "preston_pepperpicker/_exp03/deity/bristlebane/preston/preston001.mp3", "", "", 3088335751, 4271045047, Spawn)
	StartConversation(conversation, NPC, Spawn, "Preston Pepperpicker's the name. I'm poised to appeal to your particular penchant for powerful peppers! Go on, please peruse!")
end

function dlg_75_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "preston_pepperpicker/_exp03/deity/bristlebane/preston/preston001.mp3", "", "", 3088335751, 4271045047, Spawn)
	StartConversation(conversation, NPC, Spawn, "Preston Pepperpicker's the name. I'm poised to appeal to your particular penchant for powerful peppers! Go on, please peruse!")
end

