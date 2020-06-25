--[[
	Script Name	: SpawnScripts/QeynosHarbor/BordenMannus.lua
	Script Purpose	: Borden Mannus <Bartender>
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

		PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "", 2826547781, 426489100, Spawn)
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.", "dlg_4_1")
	StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "", 2826547781, 426489100, Spawn)
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "", 2826547781, 426489100, Spawn)
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "", 2826547781, 426489100, Spawn)
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional5/bartender_borden_mannus/qey_harbor/bartenderbordenmannus000.mp3", "", "", 2826547781, 426489100, Spawn)
		AddConversationOption(conversation, "I'm sorry. I took a wrong turn. Farewell.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Listen here,  this ain't no public brew hall! The Mermaid's Lure is for Marauders only. ")
end

