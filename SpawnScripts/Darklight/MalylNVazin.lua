--[[
	Script Name	: SpawnScripts/DarklightWood/MalylNVazin.lua
	Script Purpose	: Malyl N'Vazin 
	Script Author	: fearfx
	Script Date	: 2017.01.26
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ContinuingAssistance = 154

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

	if HasQuest(Spawn, ContinuingAssistance) then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Laexyra Y'Barriath wanted me to report to you and offer my help.", "Quest_ContinuingAssistance")
		StartConversation(conversation, NPC, Spawn, "Yes?")
	end
end

function Quest_ContinuingAssistance(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, ContinuingAssistance, 1)

		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Ah, that sounds good. We could definitely use help here. Take some time to look around, I have no doubt that you will run into someone who could use your help shortly--even if it's not in the official capacity of the guard, most of what these folks need will help Darklight as a whole.")

end
--[[
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I did. Atalika and I took out the Thexian camp.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "Have you finished?")
	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_7_1")
		AddConversationOption(conversation, "I'd rather not. ")
		StartConversation(conversation, NPC, Spawn, "Please speak to Miriam Will stationed near the Thexian camp. ")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will return.", "dlg_9_1")
		AddConversationOption(conversation, "I'd rather not. ")
		StartConversation(conversation, NPC, Spawn, "Please speak to Miriam Will stationed near the Thexian camp. ")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Are you ready to face a greater threat?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am ready.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Are you ready to face a greater threat?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Laexyra Y'Barriath wanted me to report to you and offer my help.", "dlg_17_1")
		StartConversation(conversation, NPC, Spawn, "Yes?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Laexyra Y'Barriath wanted me to report to you and offer my help.", "dlg_21_1")
		StartConversation(conversation, NPC, Spawn, "Yes?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I did. Atalika and I took out the Thexian camp.", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "Have you finished?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I come bearing news from Larxena D'Ziett.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Welcome back, Hacaci. Why the worried look on your face?")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I come bearing news from Larxena D'Ziett.", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Welcome back, Hacaci. Why the worried look on your face?")
	end

	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I come bearing news from Larxena D'Ziett.", "dlg_28_1")
		StartConversation(conversation, NPC, Spawn, "Welcome back, Hacaci. Why the worried look on your face?")
	end

end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Of course I am. ", "dlg_6_2")
		AddConversationOption(conversation, "No, I wouldn't.")
	StartConversation(conversation, NPC, Spawn, "Excellent news. I cannot wait to hear what reports our spies return with on the effects of this. In fact, I want you to go get the news immediately. Would you be willing do to that?")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What else is there to do?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "The Thexians continue their crusade to oust Cristanos. Never mind that they didn't even know Neriak still existed until recently; they believe they have some right to it. The younger, more foolish of them seem to think their physical presence in Nektulos forest somehow helps them. It doesn't. However, slaughtering them doesn't seem to dissuade more from coming--they are tenacious, I'll give them that.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_15_3")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Break their faith. They believe the gods are on their side in this campaign of theirs. While I cannot arrange for Innoruuk to meet them, I do believe I can work to convince them that the Darklight Wood itself has rejected them. I have been speaking with the druids at the Shadowed Oak and we have come up with a plan, I would like you to go speak with them as well. Go find Atalika, he will put this plan into motion.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What else is there to do?", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "The Thexians continue their crusade to oust Cristanos. Never mind that they didn't even know Neriak still existed until recently; they believe they have some right to it. The younger, more foolish of them seem to think their physical presence in Nektulos forest somehow helps them. It doesn't. However, slaughtering them doesn't seem to dissuade more from coming--they are tenacious, I'll give them that.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_16_3")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Break their faith. They believe the gods are on their side in this campaign of theirs. While I cannot arrange for Innoruuk to meet them, I do believe I can work to convince them that the Darklight Wood itself has rejected them. I have been speaking with the druids at the Shadowed Oak and we have come up with a plan, I would like you to go speak with them as well. Go find Atalika, he will put this plan into motion.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I agree.", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "Skulls are much easier to crush than spirits, but a crushed spirit is so much more satisfying.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_17_2")
	StartConversation(conversation, NPC, Spawn, "Ah, that sounds good. We could definitely use help here. Take some time to look around, I have no doubt that you will run into someone who could use your help shortly--even if it's not in the official capacity of the guard, most of what these folks need will help Darklight as a whole.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Ah, you must be Hacaci, savior of Hate's Envy. I heard were it not for your swift action, the whole town might have gone up in flames. We could definitely use the help of someone like you. Look around. I have no doubt that you'll run into someone who could use your help shortly--even if it's not in the official capacity of the guard.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You are welcome.", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "Excellent news. I cannot wait to hear what reports our spies return with on the effects of this. You have done well, Chayne. Neriak thanks you.")
end

function dlg_26_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What threat?", "dlg_26_2")
	StartConversation(conversation, NPC, Spawn, "Why am I not surprised? Prince Talvus is an honorless coward that would feed his own men to the slaughter should it bring him one step closer to the throne of Neriak. Thank you for bringing this to my attention, Hacaci. We will deal with this new matter at once. Now then, are you ready to face a greater threat?")
end

function dlg_26_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What else is there to do?", "dlg_26_3")
	StartConversation(conversation, NPC, Spawn, "The Thexians continue their crusade to oust Cristanos. Never mind that they didn't even know Neriak still existed until recently; they believe they have some right to it. The younger, more foolish of them seem to think their physical presence in Nektulos forest somehow helps them. It doesn't. However, slaughtering them doesn't seem to dissuade more from coming--they are tenacious, I'll give them that.")
end

function dlg_26_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_26_4")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Break their faith. They believe the gods are on their side in this campaign of theirs. While I cannot arrange for Innoruuk to meet them, I do believe I can work to convince them that the Darklight Wood itself has rejected them. I have been speaking with the druids at the Shadowed Oak and we have come up with a plan. I would like you to go speak with them. Go find Atalika, he will put this plan into motion.")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What threat?", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Why am I not surprised? Prince Talvus is an honorless coward that would feed his own men to the slaughter should it bring him one step closer to the throne of Neriak. Thank you for bringing this to my attention, Hacaci. We will deal with this new matter at once. Now then, are you ready to face a greater threat?")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What else is there to do?", "dlg_27_3")
	StartConversation(conversation, NPC, Spawn, "The Thexians continue their crusade to oust Cristanos. Never mind that they didn't even know Neriak still existed until recently; they believe they have some right to it. The younger, more foolish of them seem to think their physical presence in Nektulos forest somehow helps them. It doesn't. However, slaughtering them doesn't seem to dissuade more from coming--they are tenacious, I'll give them that.")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_27_4")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Break their faith. They believe the gods are on their side in this campaign of theirs. While I cannot arrange for Innoruuk to meet them, I do believe I can work to convince them that the Darklight Wood itself has rejected them. I have been speaking with the druids at the Shadowed Oak and we have come up with a plan. I would like you to go speak with them. Go find Atalika, he will put this plan into motion.")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What threat?", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Why am I not surprised? Prince Talvus is an honorless coward that would feed his own men to the slaughter should it bring him one step closer to the throne of Neriak. Thank you for bringing this to my attention, Hacaci. We will deal with this new matter at once. Now then, are you ready to face a greater threat?")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What else is there to do?", "dlg_28_3")
	StartConversation(conversation, NPC, Spawn, "The Thexians continue their crusade to oust Cristanos. Never mind that they didn't even know Neriak still existed until recently; they believe they have some right to it. The younger, more foolish of them seem to think their physical presence in Nektulos forest somehow helps them. It doesn't. However, slaughtering them doesn't seem to dissuade more from coming--they are tenacious, I'll give them that.")
end

function dlg_28_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_28_4")
		AddConversationOption(conversation, "Perhaps later.")
	StartConversation(conversation, NPC, Spawn, "Break their faith. They believe the gods are on their side in this campaign of theirs. While I cannot arrange for Innoruuk to meet them, I do believe I can work to convince them that the Darklight Wood itself has rejected them. I have been speaking with the druids at the Shadowed Oak and we have come up with a plan. I would like you to go speak with them. Go find Atalika, he will put this plan into motion.")
end

function dlg_28_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I agree.", "dlg_28_5")
	StartConversation(conversation, NPC, Spawn, "Skulls are much easier to crush than spirits, but a crushed spirit is so much more satisfying.")
end
--]]
--[[ raw_conversations
	PlayFlavor(NPC, "", "Please keep working with Atalika.", "", 1689589577, 4560189, Spawn)
--]]

