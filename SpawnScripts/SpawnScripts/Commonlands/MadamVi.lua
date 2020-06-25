--[[
	Script Name	: SpawnScripts/TheCommonlands/MadamVi.lua
	Script Purpose	: Madam Vi 
	Script Author	: Kinglykrab 
	Script Date	: 2019.02.05
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

	local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "Wonderful to see you, thanks again for all of your help.", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have the things you need for your Seer Stone, Madam.", "dlg_0_1")
		AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have the things you need for your Seer Stone, Madam.", "dlg_1_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have filled the flasks for you, Madam.", "dlg_2_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Actually, I do.", "dlg_3_1")
		AddConversationOption(conversation, "Not for you.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Do you have any further time to spare?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was able to find your stone, Madam.", "dlg_4_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was able to find your stone, Madam.", "dlg_5_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Some, yes.", "dlg_6_1")
		AddConversationOption(conversation, "No, nothing at all. I better go.")
		StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
	end

	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Some, yes.", "dlg_7_1")
		AddConversationOption(conversation, "No, nothing at all. I better go.")
		StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Some, yes.", "dlg_8_1")
		AddConversationOption(conversation, "No, nothing at all. I better go.")
		StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Some, yes.", "dlg_9_1")
		AddConversationOption(conversation, "No, nothing at all. I better go.")
		StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Some, yes.", "dlg_10_1")
		AddConversationOption(conversation, "No, nothing at all. I better go.")
		StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet. Patience, my lady.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_14_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_15_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_16_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_17_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was able to find your stone, Madam.", "dlg_20_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was able to find your friends. They were very grateful for the water.", "dlg_21_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was able to find your friends. They were very grateful for the water.", "dlg_22_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It was my pleasure, but you seem distracted. Do you require further assistance?", "dlg_23_1")
		AddConversationOption(conversation, "I did do great didn't I? I'll be off now.")
		StartConversation(conversation, NPC, Spawn, "Hello friend. My companions are rehydrated and back to themselves, thanks to you.")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It was my pleasure, but you seem distracted. Do you require further assistance?", "dlg_24_1")
		AddConversationOption(conversation, "I did do great didn't I? I'll be off now.")
		StartConversation(conversation, NPC, Spawn, "Hello friend. My companions are rehydrated and back to themselves, thanks to you.")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It was my pleasure, but you seem distracted. Do you require further assistance?", "dlg_25_1")
		AddConversationOption(conversation, "I did do great didn't I? I'll be off now.")
		StartConversation(conversation, NPC, Spawn, "Hello friend. My companions are rehydrated and back to themselves, thanks to you.")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It was my pleasure, but you seem distracted. Do you require further assistance?", "dlg_26_1")
		AddConversationOption(conversation, "I did do great didn't I? I'll be off now.")
		StartConversation(conversation, NPC, Spawn, "Hello friend. My companions are rehydrated and back to themselves, thanks to you.")
	end

	if convo==27 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet. Patience, my lady.", "dlg_27_1")
		StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet. Patience, my lady.", "dlg_31_1")
		StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
	end

	if convo==45 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_45_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==46 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_46_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==47 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What assistance do you require?", "dlg_47_1")
		AddConversationOption(conversation, "I'm busy at the moment.")
		StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
	end

	if convo==48 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet. Patience, my lady.", "dlg_48_1")
		StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
	end

	if convo==69 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have filled the flasks for you, Madam.", "dlg_69_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==70 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have filled the flasks for you, Madam.", "dlg_70_1")
		AddConversationOption(conversation, "Nothing right now.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
	end

	if convo==71 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Actually, I do.", "dlg_71_1")
		AddConversationOption(conversation, "Not for you.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Do you have any further time to spare?")
	end

	if convo==72 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Actually, I do.", "dlg_72_1")
		AddConversationOption(conversation, "Not for you.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Do you have any further time to spare?")
	end

	if convo==73 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Actually, I do.", "dlg_73_1")
		AddConversationOption(conversation, "Not for you.")
		StartConversation(conversation, NPC, Spawn, "Hello again. Do you have any further time to spare?")
	end

	if convo==74 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet. Patience, my lady.", "dlg_74_1")
		StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure.")
		AddConversationOption(conversation, "Not right now.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome, Madam.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Excellent work!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome, Madam.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Excellent work!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will find them.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Head out to the northwest. They have been missing for quite some time.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Perhaps.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "I wonder if they've set up camp yet.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No problem, where are they?", "dlg_3_2")
		AddConversationOption(conversation, "I care not for your friends.")
	StartConversation(conversation, NPC, Spawn, "A section of my entourage seems to be lost out there. I need you to find them, give them the water you collected earlier, and relay their location to me.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will find them.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Head out to the northwest. They have been missing for quite some time.")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Perhaps.", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "I wonder if they've set up camp yet.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome, Madam.", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you... I can complete my stone, at long last!")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure.", "dlg_15_2")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure.", "dlg_16_2")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Of course.", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Do make sure there are no parasites in the water.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure.", "dlg_17_2")
		AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Of course.", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "Do make sure there are no parasites in the water.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Oh yes, this is just what I needed. Look here, the gem is right inside. Oh, it's just gorgeous, and will work perfectly for what I have in mind. Thank you.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I agree.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Great news! Nothing like an ice cold drink on a hot day.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am very interested. Where do I look?", "dlg_21_3")
		AddConversationOption(conversation, "No, not right now. Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Exactly. You are quite intuitive. The gem you retrieved for me is in itself not enough to create the quality item I desire. Would you be interested in fetching the rest of the components I need?")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be off then.", "dlg_21_4")
		AddConversationOption(conversation, "I don't think I will help.")
	StartConversation(conversation, NPC, Spawn, "To finish my Seer Stone, I will need some components that you can gather for me from different beasts around the Commonlands. I will need some bone dust, a few water glands and, just for good measure, some sparkly bits.")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_21_5")
	StartConversation(conversation, NPC, Spawn, "Please hurry!")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I agree.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Great news! Nothing like an ice cold drink on a hot day.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will find the gem for you.", "dlg_22_3")
		AddConversationOption(conversation, "Wailing Caves? Are you insane?!")
	StartConversation(conversation, NPC, Spawn, "There is a gem that I truly desire which has evaded me.  I heard that it can be found by breaking open clumps of rocks inside the wailing caves to the west. Look for dull stone outcroppings near the vibrant blue rocks found inside.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am always careful.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "Be careful, those caves are dangerous!")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I meant no offense. Is there anything I can do to rid you of this distraction?", "dlg_23_2")
		AddConversationOption(conversation, "I think you need to get out of the sun. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Wha..distracted? Hmm, well I suppose you are correct, but please do keep your observations to yourself in the future. ")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will find the gem for you.", "dlg_23_3")
		AddConversationOption(conversation, "Wailing Caves? Are you insane?!")
	StartConversation(conversation, NPC, Spawn, "There is a gem that I truly desire which has evaded me.  I heard that it can be found by breaking open clumps of rocks inside the wailing caves to the west. Look for dull stone outcroppings near the vibrant blue rocks found inside.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am always careful.", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "Be careful, those caves are dangerous!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Wonderful to see you, thanks again for all of your help.", "", 1689589577, 4560189, Spawn)
--]]

