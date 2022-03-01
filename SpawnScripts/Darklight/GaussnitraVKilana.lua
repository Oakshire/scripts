--[[
	Script Name	: SpawnScripts/DarklightWood/GaussnitraVKilana.lua
	Script Purpose	: Gaussnitra V'Kilana 
	Script Author	: fearfx
	Script Date	: 2017.01.26
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
--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	
end
	--local choice = math.random(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "You have our gratitude.", "salute", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Have you taken out the cultists?")
	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Have the wolves been taken care of?")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Have you slain them?")
	end

	if convo==12 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Have you slain them?")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am willing.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "Hello, Chayne. I'm stuck in Wanderlust Fair for now instead of out completing my assignments. Malyl says she needs me here to help with administrative work, how boring. I'd get Vicaonar to do my assignments for me, but I know he would just find a way to weasel out of them. How would you feel about doing some work for me?")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am willing.", "dlg_19_1")
		StartConversation(conversation, NPC, Spawn, "Hello, Chayne. I'm stuck in Wanderlust Fair for now instead of out completing my assignments. Malyl says she needs me here to help with administrative work, how boring. I'd get Vicaonar to do my assignments for me, but I know he would just find a way to weasel out of them. How would you feel about doing some work for me?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am willing.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "Hello, Hacaci. I'm stuck in Wanderlust Fair for now instead of out completing my assignments. Malyl says she needs me here to help with administrative work. Sigh, how boring. I'd get Vicaonar to do my assignments for me, but he's just been sent out on some special assignment. How would you feel about doing some work for me?")
	end

	if convo==23 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am willing.", "dlg_23_1")
		StartConversation(conversation, NPC, Spawn, "Hello, Hacaci. I'm stuck in Wanderlust Fair for now instead of out completing my assignments. Malyl says she needs me here to help with administrative work. Sigh, how boring. I'd get Vicaonar to do my assignments for me, but he's just been sent out on some special assignment. How would you feel about doing some work for me?")
	end

	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, they have.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Have the wolves been taken care of?")
	end

	if convo==33 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_33_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==34 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_34_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken them out?")
	end

	if convo==52 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_52_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken out the cultists?")
	end

	if convo==53 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_53_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken out the cultists?")
	end

	if convo==54 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I have.", "dlg_54_1")
		StartConversation(conversation, NPC, Spawn, "Have you taken out the cultists?")
	end

end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Very well.", "dlg_1_2")
		AddConversationOption(conversation, "I may return later to finish this business.")
	StartConversation(conversation, NPC, Spawn, "Excellent work. Belarshalee has identified the leader of the cult, I'd like you to go take her out before they have time to recoup from the losses we've already inflicted upon them. She resides at the base of the crater itself, her name is Alerica. While you're there I'd also like you to take out the elite caste of the cult, the adherents.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I shall.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Report back to me once you've finished.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there anything else I can do?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Your work is excellent, Chayne. I will be sure and note how much of an asset you were in my report to Malyl. Thank you, soldier.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can do that.", "dlg_5_3")
		AddConversationOption(conversation, "I can not.")
	StartConversation(conversation, NPC, Spawn, "There is, actually. I've been trying to get Vicaonar to figure out what is going on with the adolescent wolves to the northwest, but he keeps claiming he's too busy. I know the claim is false, but I cannot punish him. I will, of course, note his attitude to Malyl, but she is quite busy herself. Either way, I will be looking into the wolves to see if I can find a cause for their strange behavior. But, it would help in the interim if you could kill some of them so they stop harassing travelers and fair goers. Do you think you can do that for me?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Thank you very much, Chayne.")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there anything else I can do?", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "Your work is excellent, Hacaci. I will be sure and note how much of an asset you were in my report to Malyl. Thank you, soldier.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes, I can do that.", "dlg_12_3")
		AddConversationOption(conversation, "I can not.")
	StartConversation(conversation, NPC, Spawn, "There is, actually. Vicaonar has not returned from his latest assignment. He was sent to the east to investigate some missing Nerians who have failed to return to Wanderlust Fair. I need you to check on his progress, and aid him, if necessary.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You're welcome.", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "Thank you very much, Hacaci.")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You want me to take them out?", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "That's the first good news I've heard in quite a while. Right now I'm looking for potential threats to Neriak and to the Darklight Woods. For some time now there has been a cult operating out of the Sableflame Crater to the southeast. Though they haven't tried to move outward from their location, they are quite hostile to anyone--guards and citizens of Neriak included--who get close.")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_18_3")
		AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I do, but approach with caution. For now don't go into the crater itself, just kill those that wander too far away, their outriders, fanatics, and heralds.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You want me to take them out?", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "That's the first good news I've heard in quite a while. Right now I'm looking for potential threats to Neriak and to the Darklight Woods. For some time now there has been a cult operating out of the Sableflame Crater to the southeast. Though they haven't tried to move outward from their location, they are quite hostile to anyone--guards and citizens of Neriak included--who get close.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_19_3")
		AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I do, but approach with caution. For now don't go into the crater itself, just kill those that wander too far away, their outriders, fanatics, and heralds.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Will do.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "Return to me once you've completed the task.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You want me to take them out?", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "That's the first good news I've heard in quite a while. Right now I'm looking for potential threats to Neriak and to the Darklight Woods. For some time now there has been a cult operating out of the Sableflame Crater to the southeast. Though they haven't tried to move outward from their location, they are quite hostile to anyone--guards and citizens of Neriak included--who get close.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_22_3")
		AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I do, but approach with caution. For now, don't go into the crater itself. Just kill those that wander around its perimeter: their outriders, fanatics, and heralds.")
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You want me to take them out?", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "That's the first good news I've heard in quite a while. Right now I'm looking for potential threats to Neriak and to the Darklight Woods. For some time now there has been a cult operating out of the Sableflame Crater to the southeast. Though they haven't tried to move outward from their location, they are quite hostile to anyone--guards and citizens of Neriak included--who get close.")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_23_3")
		AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I do, but approach with caution. For now, don't go into the crater itself. Just kill those that wander around its perimeter: their outriders, fanatics, and heralds.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Will do.", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "Return to me once you've completed the task.")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I can do that.", "dlg_24_2")
		AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Nice work. I've just spoken with Malyl and she has given me permission to step up the operation against the Sableflame cultists. Though she still won't let me leave the camp. That means I'd like you to go inside the crater itself, though not too deep. I've been speaking with Belarshalee Do'Torlyl who also has an interest in these cultists and she's told me more of their ranks. This time I'd like you to take out their incanters, cauterizers, scryers and watchers.")
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I can do that.", "dlg_25_2")
		AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Nice work. I've just spoken with Malyl and she has given me permission to step up the operation against the Sableflame cultists. Though she still won't let me leave the camp. That means I'd like you to go inside the crater itself, though not too deep. I've been speaking with Belarshalee Do'Torlyl who also has an interest in these cultists and she's told me more of their ranks. This time I'd like you to take out their incanters, cauterizers, scryers and watchers.")
end

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_25_3")
	StartConversation(conversation, NPC, Spawn, "I know you can. I will see you when you return.")
end

function dlg_33_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I can do that.", "dlg_33_2")
		AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Nice work. I've just spoken with Malyl and she has given me permission to step up the operation against the Sableflame cultists. Unfortunately, she still won't let me leave the camp. That means I need you to return to the crater and venture inside the crater itself. I've been speaking with Belarshalee Do'Torlyl, who also has an interest in these cultists, and she's told me more of their ranks. This time I'd like you to take out their incanters, cauterizers, scryers, and watchers.")
end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I can do that.", "dlg_34_2")
		AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Nice work. I've just spoken with Malyl and she has given me permission to step up the operation against the Sableflame cultists. Unfortunately, she still won't let me leave the camp. That means I need you to return to the crater and venture inside the crater itself. I've been speaking with Belarshalee Do'Torlyl, who also has an interest in these cultists, and she's told me more of their ranks. This time I'd like you to take out their incanters, cauterizers, scryers, and watchers.")
end

function dlg_34_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "All right.", "dlg_34_3")
	StartConversation(conversation, NPC, Spawn, "I know you can. I will see you when you return. Make sure to speak to Belarshalee before you leave.  She may know something about the Sableflame that will assist you in your task.")
end

function dlg_52_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Very well.", "dlg_52_2")
		AddConversationOption(conversation, "I may return later to finish this business.")
	StartConversation(conversation, NPC, Spawn, "Excellent work. Belarshalee has identified the leader of the cult. I'd like you to take her out before they have time to recoup from the losses we've already inflicted upon them. She resides at the base of the crater itself, and her name is Alerica. While you're there, I'd also like you to take out the elite caste of the Sableflame cult: the adherents.")
end

function dlg_53_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Very well.", "dlg_53_2")
		AddConversationOption(conversation, "I may return later to finish this business.")
	StartConversation(conversation, NPC, Spawn, "Excellent work. Belarshalee has identified the leader of the cult. I'd like you to take her out before they have time to recoup from the losses we've already inflicted upon them. She resides at the base of the crater itself, and her name is Alerica. While you're there, I'd also like you to take out the elite caste of the Sableflame cult: the adherents.")
end

function dlg_54_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Very well.", "dlg_54_2")
		AddConversationOption(conversation, "I may return later to finish this business.")
	StartConversation(conversation, NPC, Spawn, "Excellent work. Belarshalee has identified the leader of the cult. I'd like you to take her out before they have time to recoup from the losses we've already inflicted upon them. She resides at the base of the crater itself, and her name is Alerica. While you're there, I'd also like you to take out the elite caste of the Sableflame cult: the adherents.")
end

function dlg_54_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I shall.", "dlg_54_3")
	StartConversation(conversation, NPC, Spawn, "Report back to me once you've finished.")
end
]]--

--[[ raw_conversations
	PlayFlavor(NPC, "", "You have our gratitude.", "salute", 1689589577, 4560189, Spawn)
--]]

