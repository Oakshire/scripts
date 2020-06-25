--[[
	Script Name	: SpawnScripts/SouthQeynos/TrevorMinturn.lua
	Script Purpose	: Trevor Minturn <General Goods>
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

		PlayFlavor(NPC, "voiceover/english/merchant_trevor_minturn/qey_south/trevorminturn000.mp3", "", "", 2006919025, 2800091409, Spawn)
		AddConversationOption(conversation, "I don't need anything, thank you. ", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "May I interest you in some of my fine wares, friend?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/merchant_trevor_minturn/qey_south/trevorminturn000.mp3", "", "", 2006919025, 2800091409, Spawn)
		AddConversationOption(conversation, "I don't need anything, thank you. ", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "May I interest you in some of my fine wares, friend?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/merchant_trevor_minturn/qey_south/trevorminturn000.mp3", "", "", 2006919025, 2800091409, Spawn)
		AddConversationOption(conversation, "I don't need anything, thank you. ", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "May I interest you in some of my fine wares, friend?")
	end

end

