--[[
	Script Name	: SpawnScripts/DarklightWood/VornlinBVytyl.lua
	Script Purpose	: Vornlin B'Vytyl 
	Script Author	: fearfx
	Script Date	: 2017.01.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ContinuingAssistance = 154

function spawn(NPC)
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
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have a letter for you from Laexyra Y'Barriath at the T'Vatar Post.", "Quest_ContinuingAssistance")
		StartConversation(conversation, NPC, Spawn, "May I help you?")
	end
end 

--------------------------------------------------------------------------------
--      Continuing Assistance
--------------------------------------------------------------------------------

function Quest_ContinuingAssistance(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ContinuingAssistance, 2)

		AddConversationOption(conversation, "And I suppose I should say you are welcome.", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Ah, about time too. I suppose I should say thank you.")
end

--[[

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Have you found him yet?")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, I haven't.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "You haven't seen an ugly Teir'Dal named Alakzaer around Wanderlust Fair lately, have you?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, I haven't.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "You haven't seen an ugly Teir'Dal named Alakzaer around Wanderlust Fair lately, have you?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes. He says he'll come down after he gets his bone samples. He was hiding from the drakes up there.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Have you found him yet?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes. He says he'll come down after he gets his bone samples. He was hiding from the drakes up there.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Have you found him yet?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes. He says he'll come down after he gets his bone samples. He was hiding from the drakes up there.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Have you found him yet?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have a letter for you from Laexyra Y'Barriath at the T'Vatar Post.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "May I help you?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, I haven't.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "You haven't seen an ugly Teir'Dal named Alakzaer around Wanderlust Fair lately, have you?")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, I haven't.", "dlg_13_1")
		StartConversation(conversation, NPC, Spawn, "You haven't seen an ugly Teir'Dal named Alakzaer around Wanderlust Fair lately, have you?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well, when I kill one creature, five shroomlings jump out of its corpse.", "dlg_14_1")
		StartConversation(conversation, NPC, Spawn, "Have you destroyed their species yet?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I brought you a shroomling.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Look at them!")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I brought you a shroomling.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Look at them!")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well, when I kill one creature, five shroomlings jump out of its corpse.", "dlg_17_1")
		StartConversation(conversation, NPC, Spawn, "Have you destroyed their species yet?")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well, when I kill one creature, five shroomlings jump out of its corpse.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "Have you destroyed their species yet?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, the boarfiend exploded.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Did it work?")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I brought you a shroomling.", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "Look at them!")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I brought you a shroomling.", "dlg_21_1")
		StartConversation(conversation, NPC, Spawn, "Look at them!")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Did what work? Madam Victra told me to speak with you about this boarfiend.", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "Did it work?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, the boarfiend exploded.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Did it work?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, the boarfiend exploded.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Did it work?")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you still need the Nerian knot-tree leaves?", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "HAHAHAHA HAH HAH HAH!!! I WIN! I found out how to kill them!!!")
	end

	if convo==28 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you still need the Nerian knot-tree leaves?", "dlg_28_1")
		StartConversation(conversation, NPC, Spawn, "HAHAHAHA HAH HAH HAH!!! I WIN! I found out how to kill them!!!")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, get your sandwich.", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "How did it go? Can I have my sandwich?")
	end

	if convo==38 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you still need the Nerian knot-tree leaves?", "dlg_38_1")
		StartConversation(conversation, NPC, Spawn, "HAHAHAHA HAH HAH HAH!!! I WIN! I found out how to kill them!!!")
	end

	if convo==39 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Do you still need the Nerian knot-tree leaves?", "dlg_39_1")
		StartConversation(conversation, NPC, Spawn, "HAHAHAHA HAH HAH HAH!!! I WIN! I found out how to kill them!!!")
	end

	if convo==51 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, get your sandwich.", "dlg_51_1")
		StartConversation(conversation, NPC, Spawn, "How did it go? Can I have my sandwich?")
	end

end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Blast him. When I finally need him he isn't around to be used. Do you think you could help me locate him?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll see if I can find him.", "dlg_2_3")
		AddConversationOption(conversation, "I'm sure he'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "Great. The last I heard from him he was going up to the Nerian Highlands to study some dragon bones. He said he would be back shortly, but that was... hm... when was that? Well more than a day, I know that. If you could go and find him and let him know that I need him that would be great, thanks.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Blast him. When I finally need him he isn't around to be used. Do you think you could help me locate him?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll see if I can find him.", "dlg_3_3")
		AddConversationOption(conversation, "I'm sure he'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "Great. The last I heard from him he was going up to the Nerian Highlands to study some dragon bones. He said he would be back shortly, but that was... hm... when was that? Well more than a day, I know that. If you could go and find him and let him know that I need him that would be great, thanks.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "Yes, do that.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Maybe I could help.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Blast him! Blast blastity blasted blastful blasting blast him!!! I needed him.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're a scientist?", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "Perhaps. I made a stupid arrangement with that guard over there, Vicaonar, and now I've got to go kill mushroom creatures in the Nightshadow Bog. I wasn't thinking clearly and I thought the deal sounded sweet, but really he just wants me to do his work for him. So, uh, do you want to do his work for me for him?")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I'll help.", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "... do you want to help or not?")
end

function dlg_8_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, all of them?", "dlg_8_5")
		AddConversationOption(conversation, "Yeah, right... find someone else to do that.")
	StartConversation(conversation, NPC, Spawn, "Great! Vicaonar said the job isn't done until all the mushroom creatures in the swamp are dead. So go kill all of them.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're a scientist?", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Perhaps. I made a stupid arrangement with that guard over there, Vicaonar, and now I've got to go kill mushroom creatures in the Nightshadow Bog. I wasn't thinking clearly and I thought the deal sounded sweet, but really he just wants me to do his work for him. So, uh, do you want to do his work for me for him?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I'll help.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "... do you want to help or not?")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, all of them?", "dlg_9_4")
		AddConversationOption(conversation, "Yeah, right... find someone else to do that.")
	StartConversation(conversation, NPC, Spawn, "Great! Vicaonar said the job isn't done until all the mushroom creatures in the swamp are dead. So go kill all of them.")
end

function dlg_9_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, all of them?", "dlg_9_5")
		AddConversationOption(conversation, "Yeah, right... find someone else to do that.")
	StartConversation(conversation, NPC, Spawn, "Great! Vicaonar said the job isn't done until all the mushroom creatures in the swamp are dead. So go kill all of them.")
end

function dlg_9_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll return.", "dlg_9_6")
	StartConversation(conversation, NPC, Spawn, "Yes, genocide them up something fierce! And hurry, Vicaonar doesn't have to give me that sandwich until the job is done!")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Maybe I could help.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Blast him! Blast blastity blasted blastful blasting blast him!!! I needed him.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're a scientist?", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Perhaps. I made a stupid arrangement with that guard over there, Vicaonar, and now I've got to go kill mushroom creatures in the Nightshadow Bog. I wasn't thinking clearly and I thought the deal sounded sweet, but really he just wants me to do his work for him. So, uh, do you want to do his work for me for him?")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I'll help.", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "... do you want to help or not?")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Uh, all of them?", "dlg_10_5")
		AddConversationOption(conversation, "Yeah, right... find someone else to do that.")
	StartConversation(conversation, NPC, Spawn, "Great! Vicaonar said the job isn't done until all the mushroom creatures in the swamp are dead. So go kill all of them.")
end

function dlg_10_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll return.", "dlg_10_6")
	StartConversation(conversation, NPC, Spawn, "Yes, genocide them up something fierce! And hurry, Vicaonar doesn't have to give me that sandwich until the job is done!")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "And I suppose I should say you are welcome.", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Ah, about time too. I suppose I should say thank you.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Hmph! When I finally need him he isn't around to be used. Do you think you could help me locate him?")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll see if I can find him.", "dlg_12_3")
		AddConversationOption(conversation, "I'm sure he'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "Great. The last I heard from him he was going up to the Nerian Highlands to study some dragon bones. He said he would be back shortly, but that was... hm... when was that? Well more than a day, I know that. If you could go and find him and let him know that I need him, that would be great. Thanks.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Hmph! When I finally need him he isn't around to be used. Do you think you could help me locate him?")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll see if I can find him.", "dlg_13_3")
		AddConversationOption(conversation, "I'm sure he'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "Great. The last I heard from him he was going up to the Nerian Highlands to study some dragon bones. He said he would be back shortly, but that was... hm... when was that? Well more than a day, I know that. If you could go and find him and let him know that I need him, that would be great. Thanks.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "Yes, do that.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_14_2")
		AddConversationOption(conversation, "I don't think I care to help with this anymore.")
	StartConversation(conversation, NPC, Spawn, "Really?! That's ... well that's amazing! I need to see this for myself! Bring me one of the shroomlings!")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "We'll see.", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "How potentially interesting!")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "I already have some.")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So I guess you don't need this shroomling then?", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "Don't know! Probably from you. I bet you've got microscopic shroomlings all over you right now. How disgusting! Don't stand too close!")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Oh?", "dlg_15_4")
	StartConversation(conversation, NPC, Spawn, "No, no I don't. I have, however, figured out a way to get my sandwich from Vicaonar.")
end

function dlg_15_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_15_5")
		AddConversationOption(conversation, "I tire of this.")
	StartConversation(conversation, NPC, Spawn, "Go talk to Madam Victra, she's got a little something prepared for me that should help us take care of these pests.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "I already have some.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So I guess you don't need this shroomling then?", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Don't know! Probably from you. I bet you've got microscopic shroomlings all over you right now. How disgusting! Don't stand too close!")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Oh?", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "No, no I don't. I have, however, figured out a way to get my sandwich from Vicaonar.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_16_5")
		AddConversationOption(conversation, "I tire of this.")
	StartConversation(conversation, NPC, Spawn, "Go talk to Madam Victra, she's got a little something prepared for me that should help us take care of these pests.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go talk with Madam Victra.", "dlg_16_6")
	StartConversation(conversation, NPC, Spawn, "I guess they grow slower when not in the swamp... but they sure do breed faster. We'd better work quickly.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_17_2")
		AddConversationOption(conversation, "I don't think I care to help with this anymore.")
	StartConversation(conversation, NPC, Spawn, "Really?! That's ... well that's amazing! I need to see this for myself! Bring me one of the shroomlings!")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_18_2")
		AddConversationOption(conversation, "I don't think I care to help with this anymore.")
	StartConversation(conversation, NPC, Spawn, "Really?! That's ... well that's amazing! I need to see this for myself! Bring me one of the shroomlings!")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "We'll see.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "How potentially interesting!")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I think the boarfiend may have just had too much in his stomach.", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Wow! Some sort of explosive, don't-eat-me, defense mechanism! These creatures are amazing!")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go get the leaves.", "dlg_19_3")
		AddConversationOption(conversation, "No, I'm out.")
	StartConversation(conversation, NPC, Spawn, "Well, that's sort of what I said. Anyway, I'm toying around with some other methods to get rid of these things. Most of my tests are going to require leaves from the Nerian knot-tree, however. I have enough to test with, but if my tests are successful then we're going to need a lot more. I need you to go up to the Shadow Oak northwest of here and collect some for me.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "I already have some.")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So I guess you don't need this shroomling then?", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "Don't know! Probably from you. I bet you've got microscopic shroomlings all over you right now. How disgusting! Don't stand too close!")
end

function dlg_20_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Oh?", "dlg_20_4")
	StartConversation(conversation, NPC, Spawn, "No, no I don't. I have, however, figured out a way to get my sandwich from Vicaonar.")
end

function dlg_20_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_20_5")
		AddConversationOption(conversation, "I tire of this.")
	StartConversation(conversation, NPC, Spawn, "Go talk to Madam Victra, she's got a little something prepared for me that should help us take care of these pests.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "I already have some.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "So I guess you don't need this shroomling then?", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "Don't know! Probably from you. I bet you've got microscopic shroomlings all over you right now. How disgusting! Don't stand too close!")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Oh?", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "No, no I don't. I have, however, figured out a way to get my sandwich from Vicaonar.")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_21_5")
		AddConversationOption(conversation, "I tire of this.")
	StartConversation(conversation, NPC, Spawn, "Go talk to Madam Victra, she's got a little something prepared for me that should help us take care of these pests.")
end

function dlg_21_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll go talk with Madam Victra.", "dlg_21_6")
	StartConversation(conversation, NPC, Spawn, "I guess they grow slower when not in the swamp... but they sure do breed faster. We'd better work quickly.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll be back.", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "Oh. Take the boarfiend down to Nightshadow Marsh, kill some mushroom things, release the boarfiend and let it eat them all up! Brilliant!")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I think the boarfiend may have just had too much in his stomach.", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "Wow! Some sort of explosive, don't-eat-me, defense mechanism! These creatures are amazing!")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go get the leaves.", "dlg_24_3")
		AddConversationOption(conversation, "No, I'm out.")
	StartConversation(conversation, NPC, Spawn, "Well, that's sort of what I said. Anyway, I'm toying around with some other methods to get rid of these things. Most of my tests are going to require leaves from the Nerian knot-tree, however. I have enough to test with, but if my tests are successful then we're going to need a lot more. I need you to go up to the Shadow Oak northwest of here and collect some for me.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I think the boarfiend may have just had too much in his stomach.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Wow! Some sort of explosive, don't-eat-me, defense mechanism! These creatures are amazing!")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right, I'll go get the leaves.", "dlg_25_3")
		AddConversationOption(conversation, "No, I'm out.")
	StartConversation(conversation, NPC, Spawn, "Well, that's sort of what I said. Anyway, I'm toying around with some other methods to get rid of these things. Most of my tests are going to require leaves from the Nerian knot-tree, however. I have enough to test with, but if my tests are successful then we're going to need a lot more. I need you to go up to the Shadow Oak northwest of here and collect some for me.")
end

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Right.", "dlg_25_4")
	StartConversation(conversation, NPC, Spawn, "Excellent. We can't get rid of these things quick enough.")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_27_2")
	StartConversation(conversation, NPC, Spawn, "Yes! That's where the power comes from. I'll just mix these up real quick.")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Things or mushroom things?", "dlg_27_3")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "There we go! Take this spray out to Nightshadow Bog and destroy them! It's simple to use, just point and click, and things die.")
end

function dlg_28_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ok.", "dlg_28_2")
	StartConversation(conversation, NPC, Spawn, "Yes! That's where the power comes from. I'll just mix these up real quick.")
end

function dlg_28_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Things or mushroom things?", "dlg_28_3")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "There we go! Take this spray out to Nightshadow Bog and destroy them! It's simple to use, just point and click, and things die.")
end

function dlg_28_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well that's a relief.", "dlg_28_4")
	StartConversation(conversation, NPC, Spawn, "Don't worry, it's harmless to us. I'll see you when you return! The best part about it, you infect one and he spreads it to others before dying! You shouldn't need to hit too many with the spray before we're taken care of!")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful! You hear that Vicaonar? Give me that sandwich! Anyway, thanks for your help in sorting this out. I appreciate it. Actually, I'm pretty sure everyone here appreciated it.")
end

function dlg_38_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_38_2")
	StartConversation(conversation, NPC, Spawn, "Yes! That's where the power comes from. I'll just mix these up real quick.")
end

function dlg_38_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Things or mushroom things?", "dlg_38_3")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "There we go! Take this spray out to Nightshadow Bog and destroy them! It's simple to use, just point and click, and things die.")
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "Yes! That's where the power comes from. I'll just mix these up real quick.")
end

function dlg_39_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Things or mushroom things?", "dlg_39_3")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "There we go! Take this spray out to Nightshadow Bog and destroy them! It's simple to use, just point and click, and things die.")
end

function dlg_39_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well that's a relief.", "dlg_39_4")
	StartConversation(conversation, NPC, Spawn, "Don't worry, it's harmless to us. I'll see you when you return! The best part about it, you infect one and he spreads it to others before dying! You shouldn't need to hit too many with the spray before we're taken care of!")
end

function dlg_51_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_51_2")
	StartConversation(conversation, NPC, Spawn, "Wonderful! You hear that, Vicaonar? Give me that sandwich! Anyway, thanks for your help in sorting this out. I appreciate it. Actually, I'm pretty sure everyone here appreciated it.")
end
]]--
