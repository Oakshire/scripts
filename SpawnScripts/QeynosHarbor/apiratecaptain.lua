--[[
	Script Name	: SpawnScripts/QeynosHarbor/apiratecaptain.lua
	Script Purpose	: a pirate captain <Pirates of Gunthak>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Booming, you say?", "dlg_27_1")
		AddConversationOption(conversation, "This story makes me seasick.")
	StartConversation(conversation, NPC, Spawn, "It's a right pleasure to be returnin' to me favorite port, especially after a harrowin' journey, the likes of which are enough to make even the saltiest seadog weep.  I endured rough seas, rough mates, and a tragic dearth of grog.  But ignore my complainin'.  The fact of the matter is that business is booming!")
	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Booming, you say?", "dlg_28_1")
		AddConversationOption(conversation, "This story makes me seasick.")
		StartConversation(conversation, NPC, Spawn, "It's a right pleasure to be returnin' to me favorite port, especially after a harrowin' journey, the likes of which are enough to make even the saltiest seadog weep.  I endured rough seas, rough mates, and a tragic dearth of grog.  But ignore my complainin'.  The fact of the matter is that business is booming!")
	end

end

