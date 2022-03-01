--[[
	Script Name	: SpawnScripts/Sprawl/LiegeAquila.lua
	Script Purpose	: Liege Aquila <Freeport Militia>
	Script Author	: Scatman
	Script Date	: 2008.09.29
	Script Notes	: 
--]]

local QUEST_1 = 544 -- repeatable

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	RandomVoiceOver(NPC, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		YouveDoneWell(NPC, Spawn, conversation)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		Greetings(NPC, Spawn, conversation)
	end

--[[
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What duty is that?", "dlg_5_1")
		AddConversationOption(conversation, "Sorry, but I have other things I must do.")
		StartConversation(conversation, NPC, Spawn, "Greetings, citizen. Are you prepared to do your duty for the Freeport Militia?")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What duty is that?", "dlg_6_1")
		AddConversationOption(conversation, "Sorry, but I have other things I must do.")
		StartConversation(conversation, NPC, Spawn, "Greetings, citizen. Are you prepared to do your duty for the Freeport Militia?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I took care of a number of those troublemakers.", "dlg_10_1")
		AddConversationOption(conversation, "Not yet, Aquila.")
		StartConversation(conversation, NPC, Spawn, "Did you teach the Black Magi who is in charge of Freeport?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am ready to attack those troublemakers again!", "dlg_11_1")
		AddConversationOption(conversation, "I'll take up this cause later.")
		StartConversation(conversation, NPC, Spawn, "Your efforts to control the Black Magi have been helpful, but more work remains to be done.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I guess I need to kill more Dervish, eh?", "dlg_16_1")
		AddConversationOption(conversation, "I think I've had enough.")
		StartConversation(conversation, NPC, Spawn, "You've done well for the Freeport Militia so far, but your job isn't over yet, you know.")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I taught those crooks a lesson.", "dlg_20_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "So, did you strike some fear into the hearts of the Dervish?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I guess I need to kill more Dervish, eh?", "dlg_21_1")
		AddConversationOption(conversation, "I think I've had enough.")
		StartConversation(conversation, NPC, Spawn, "You've done well for the Freeport Militia so far, but your job isn't over yet, you know.")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "So, did you strike some fear into the hearts of the Dervish?")
	end

	if convo==31 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I taught those crooks a lesson.", "dlg_31_1")
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "So, did you strike some fear into the hearts of the Dervish?")
	end
--]]
end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
	end
end

---------------------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------------------

function Greetings(NPC, Spawn, conversation)
	AddConversationOption(conversation, "What duty is that?", "dlg_6_1")
	AddConversationOption(conversation, "Sorry, but I have other things I must do.")
	StartConversation(conversation, NPC, Spawn, "Greetings, citizen. Are you prepared to do your duty for the Freeport Militia?")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What do you mean?", "dlg_6_2")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "The gangs here in the Sprawl are out of control! Clearly it's time that the Militia took control of the situation. The Dreadnaughts aren't doing enough to maintain order.")
end

function dlg_6_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will perform my duty for Freeport.", "dlg_6_3")
	AddConversationOption(conversation, "Not really.")
	StartConversation(conversation, NPC, Spawn, "The Dreadnaughts are supposed to have the run of this place, but in my opinion things would be better if the Militia came here in force and took over. Are you willing to help us do that?")
end

function dlg_6_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll do it.", "OfferQuest1")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "We need to handle some of these Dervish. They've infested the Sprawl from their bandit camps in the Commonlands. We've got to show them who's in charge around here! I think it will take a few sweeps to really strike fear into them.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I taught those crooks a lesson.", "dlg_15_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "So, did you strike some fear into the hearts of the Dervish?")
end

function dlg_15_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, NPC, Spawn, "Well done. You show some potential as a worthy servant of the Freeport Militia. Return to me when you are ready for another assignment.")
end

---------------------------------------------------------------------------------------------------------
--						QUEST 2
---------------------------------------------------------------------------------------------------------

function YouveDoneWell(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I'm ready for a new assignment.", "dlg_6_3")
	AddConversationOption(conversation, "I think I've had enough.")
	StartConversation(conversation, NPC, Spawn, "You've done well for the Freeport Militia so far, but your job isn't over yet, you know.")
end


















function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll help out.", "dlg_1_2")
	AddConversationOption(conversation, "That's not my problem.")
	StartConversation(conversation, NPC, Spawn, "It's not only the Dervish causing problems here. The Black Magi, a secretive group of ratonga, are causing havoc in the streets. We can't allow them to dominate the Sprawl!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I understand the risks.", "dlg_1_3")
	AddConversationOption(conversation, "I'll think about it.")
	StartConversation(conversation, NPC, Spawn, "Strike some fear into those rogue ratonga. Be careful, though. At first they won't pester you much, but once they notice you've been attacking their kind, they'll be out for your blood!")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_1_4")
	StartConversation(conversation, NPC, Spawn, "Excellent. Report back when you've put the Black Magi in their place.")
end









function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you. I'll check back for more work.", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Good. Gangs like that must be kept in line for the sake of Freeport. A job well done, citizen. Check back with me to see if I have more assignments for you.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I understand the risks.", "dlg_11_2")
	AddConversationOption(conversation, "I'll think about it.")
	StartConversation(conversation, NPC, Spawn, "Strike some fear into those rogue ratonga. Be careful, though. At first they won't pester you much, but once they notice you've been attacking their kind, they'll be out for your blood!")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "Excellent. Report back when you've put the Black Magi in their place.")
end


function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll do it.", "dlg_16_2")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "We need to handle some of these Dervish. They've infested the Sprawl from their bandit camps in the Commonlands. We've got to show them who's in charge around here! I think it will take a few sweeps to really strike fear into them.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "Glad to hear it. Defeat them and return to me for your payment.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "Well done. You show some potential as a worthy servant of the Freeport Militia. Return to me when you are ready for another assignment.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll do it.", "dlg_21_2")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "We need to handle some of these Dervish. They've infested the Sprawl from their bandit camps in the Commonlands. We've got to show them who's in charge around here! I think it will take a few sweeps to really strike fear into them.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will do so.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "Glad to hear it. Defeat them and return to me for your payment.")
end

function dlg_31_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I will return.", "dlg_31_2")
	StartConversation(conversation, NPC, Spawn, "Well done. You show some potential as a worthy servant of the Freeport Militia. Return to me when you are ready for another assignment.")
end

