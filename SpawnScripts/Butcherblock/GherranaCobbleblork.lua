--[[
	Script Name	: SpawnScripts/ButcherblockMountains/GherranaCobbleblork.lua
	Script Purpose	: Gherrana Cobbleblork 
	Script Author	: jakejp
	Script Date	: 2018.06.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local FeathersForGherrana = 279

function spawn(NPC)
	ProvidesQuest(NPC, FeathersForGherrana)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasCompletedQuest(Spawn, FeathersForGherrana) == false and HasQuest(Spawn, FeathersForGherrana) == false and CanReceiveQuest(Spawn, FeathersForGherrana) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Excuse me?", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "To fly about the heavens is all this gnome wants to do!")
	elseif GetQuestStep(Spawn, FeathersForGherrana) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Feathers! I need more scavenger feathers!")
	elseif GetQuestStep(Spawn, FeathersForGherrana) == 2 then 
		SetStepComplete(Spawn, FeathersForGherrana, 2)
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Glad to be of help!")
		StartConversation(conversation, NPC, Spawn, "Neato! Look at all these feathers! Wonderful, just wonderful! Here you are. Take this for your efforts. Oh, Jondy and I will be flying along in no time!")
	elseif HasCompletedQuest(Spawn, FeathersForGherrana) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1023.mp3", "", "", 0, 0, Spawn)
	end
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I've heard of aviaks before. What of them?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "You see out there? Waaaaaaaay out there, up high? That's the home of the Kragplooms, a tribe of aviaks that have lived in the Butcherblock Mountains for hundreds of years.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Are the Kragplooms peaceful?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "It has been said that hundreds of years ago, they once lived atop the trees here in giant platforms. What a sight that must have been! Now though, after the cataclysm, the Kragploom have flocked to that mesa up there near those huge crystalline formations.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How is that?", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Peaceful? Ha! Not exactly. You see the Kragplooms are a bit xenophobic... That means distrustful of others. Um, anyways they tend to attack anyone who gets near them. This of course has hindered the flying contraption my husband and I are working on.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Perhaps I could help you?", "dlg_5_5")
	StartConversation(conversation, NPC, Spawn, "Well, my husband is off in Freeport collecting iksar scales which he has told me is quite a difficult task. But, I think my task is even harder!")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sure, if the price is right.", "GiveFeathersForGherrana")
		AddConversationOption(conversation, "Forget it. Sounds too dangerous!")
	StartConversation(conversation, NPC, Spawn, "Well my first task is to gather up a crate of kittens, which I've already done and shipped back to my laboratory. I'm having a heck of a time getting all the feathers I need, however. Would you mind gathering some feathers from the Kragploom scavengers?")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Off I go!")
	StartConversation(conversation, NPC, Spawn, "Splendid! You might have an easier time getting them than I did. When I asked the Kragplooms themselves, they tried to eat me! Can you believe that! Me! I don't taste very good... At least I don't think I do. Anyways I'll need a great deal of feathers, so you better start now. Oh, and you will be fully compensated for your efforts.")
end

function dlg_5_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Glad to be of help!")
	StartConversation(conversation, NPC, Spawn, "Neato! Look at all these feathers! Wonderful, just wonderful! Here you are. Take this for your efforts. Oh, Jondy and I will be flying along in no time!")
end

function GiveFeathersForGherrana(NPC, Spawn)
	OfferQuest(NPC, Spawn, FeathersForGherrana)
end
