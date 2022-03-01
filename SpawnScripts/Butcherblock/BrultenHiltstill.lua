--[[
	Script Name	: SpawnScripts/ButcherblockMountains/BrultenHiltstill.lua
	Script Purpose	: Brulten Hiltstill 
	Script Author	: jakejp
	Script Date	: 2018.06.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SeekingBrultenHiltstill = 270
local TheKoboldAndTheBeautiful = 276
local MuckflickMessageIntercepted = 277
local SeekingTheKilnkors = 278


function spawn(NPC)
	ProvidesQuest(NPC, TheKoboldAndTheBeautiful)
	ProvidesQuest(NPC, MuckflickMessageIntercepted)
	ProvidesQuest(NPC, SeekingTheKilnkors)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, SeekingBrultenHiltstill) then
		-- Start first quest (Add if you don't do this quest from start zone)
		-- Add Conversation to complete that side quest
		SetStepComplete(Spawn, SeekingBrultenHiltstill, 1)
		if HasCompletedQuest(Spawn, TheKoboldAndTheBeautiful) == false and HasQuest(Spawn, TheKoboldAndTheBeautiful	) == false  and CanReceiveQuest(Spawn, TheKoboldAndTheBeautiful) then 
			PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "I'm " .. GetName(Spawn).. ". Where am I?", "dlg_5_1")
			StartConversation(conversation, NPC, Spawn, "There really is nothing like the smell of the earth here in these mountains. One can almost taste the gems and minerals wafting up from the ground... Oh, ahoy there young one. You look new to these parts. Tell me, who might you be?")
		end
	elseif HasCompletedQuest(Spawn, TheKoboldAndTheBeautiful) == false and HasQuest(Spawn, TheKoboldAndTheBeautiful	) == false  and CanReceiveQuest(Spawn, TheKoboldAndTheBeautiful) then
		-- Offer The Kobold And The Beautiful if not completed or started 
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm " .. GetName(Spawn).. ". Where am I?", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "There really is nothing like the smell of the earth here in these mountains. One can almost taste the gems and minerals wafting up from the ground... Oh, ahoy there young one. You look new to these parts. Tell me, who might you be?")
    elseif GetQuestStep(Spawn, TheKoboldAndTheBeautiful) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm going. I'm going!") 
		StartConversation(conversation, NPC, Spawn, "Friend, you return too soon! Kobolds lurk in every corner of these lands. You must slay more still! Go now!")
	elseif GetQuestStep(Spawn, TheKoboldAndTheBeautiful) == 2 then
		Say(Player, "TEST")
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have slain several kobolds, though I'm sure more will take their place.", "Option2")
		StartConversation(conversation, NPC, Spawn, "The yapping... It's stopped. I judge you were successful then?")
		--StartConversation(conversation, NPC, Spawn, "The yapping... It's stopped. I judge you were successful then?")
	elseif HasCompletedQuest(Spawn, MuckflickMessageIntercepted) == false and HasQuest(Spawn, MuckflickMessageIntercepted) == false  and CanReceiveQuest(Spawn, MuckflickMessageIntercepted) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have slain several kobolds, though I'm sure more will take their place.", "Option2_b")
		StartConversation(conversation, NPC, Spawn, "The yapping... It's stopped. I judge you were successful then?")
	elseif GetQuestStep(Spawn, MuckflickMessageIntercepted) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I shall return.")
		StartConversation(conversation, NPC, Spawn, "Well?! Where's the note. Go on, those runners have been seen running between the various camps between here and Kaladim.")
	elseif GetQuestStep(Spawn, MuckflickMessageIntercepted) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Here's the note.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "You return, and by the look on your face, you were triumphant. Here, let me see the note you acquired.")
	elseif HasCompletedQuest(Spawn, SeekingTheKilnkors) == false and HasQuest(Spawn, SeekingTheKilnkors) == false  and CanReceiveQuest(Spawn, SeekingTheKilnkors) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "The Kilnkor brothers? Where can I find them?", "dlg_12_2")
		AddConversationOption(conversation, "Nah, forget it. I've done more than enough. I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "Ack, this is what I feared. It is encrypted...	 or at least written in a language not familiar to these weary old eyes. This note's meaning is beyond me. You'll need to take this to my superiors, the Kilnkor brothers.")
	elseif GetQuestStep(Spawn, MuckflickMessageIntercepted) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Your help is much appreciated. Go speak with Jonedorn Kilnkor if you haven't already.")
	elseif HasCompletedQuest(Spawn, SeekingTheKilnkors) == true then 
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Your help is much appreciated. Go speak with Jonedorn Kilnkor if you haven't already.")
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Go on.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Head west for a bit, past the goblin camps and head south until you see the dwarven outpost. The Kilnkor brothers run the show there, working with the Irontoe Brigade.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm on my way! Good day and good luck.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Find Jonedorn Kilnkor first. Give him this note and tell him where you got it. He'll be sure to help.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How do you mean?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "You've just set foot in Butcherblock Mountains, the beloved homeland of the dwarves... Though since I last traversed these peaks, these mountains have changed in ways this old dwarf would never have imagined.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Kobolds, terrible drooling heathens who dare to claim the almighty Brell as their maker have recently made their way to the surface and have infested these beautiful mountains with their presence.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Kobolds, in the home of the dwarves? How?", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "It saddens me to say, but it appears the kobolds have sprung forth from the halls of Kaladim itself!")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What can I do?", "dlg_5_5")
		AddConversationOption(conversation, "Okay. Well, I'll be going now. No sense involving myself in matters of violence.")
	StartConversation(conversation, NPC, Spawn, "I've no time to explain now... We must act now before the kobolds around us organize themselves and attack!")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It would be an honor!", "GiveTheKoboldAndTheBeautiful")
		AddConversationOption(conversation, "I shall take joy in the slaughter of each and every one of the beasts I kill!", "GiveTheKoboldAndTheBeautiful")
		AddConversationOption(conversation, "Drooling heathens?! Forget it!")
	StartConversation(conversation, NPC, Spawn, "The loose bands of kobold camps in these woods here seem to be slowly assembling into a larger and more organized force. An army no doubt meant to challenge the resistance of dwarves who have constructed outposts here in the Butcherblock Mountains. I need you to whittle down their forces as best you can so that we might stymie their effort and buy my brethren more time as they prepare to make their counter-attack!")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, MuckflickMessageIntercepted, 2)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "The Kilnkor brothers? Where can I find them?", "dlg_12_2")
	AddConversationOption(conversation, "Nah, forget it. I've done more than enough. I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Ack, this is what I feared. It is encrypted... or at least written in a language not familiar to these weary old eyes. This note's meaning is beyond me. You'll need to take this to my superiors, the Kilnkor brothers.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Go on.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Head west for a bit, past the goblin camps and head south until you see the dwarven outpost. The Kilnkor brothers run the show there, working with the Irontoe Brigade.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm on my way! Good day and good luck.", "GiveSeekingTheKilnkors")
	StartConversation(conversation, NPC, Spawn, "Find Jonedorn Kilnkor first. Give him this note and tell him where you got it. He'll be sure to help.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "How do you mean?", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "You've just set foot in Butcherblock Mountains, the beloved homeland of the dwarves... Though since I last traversed these peaks, these mountains have changed in ways this old dwarf would never have imagined.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Where did they come from?", "dlg_22_3")
	StartConversation(conversation, NPC, Spawn, "Kobolds, terrible drooling heathens who dare to claim the almighty Brell as their maker have recently made their way to the surface and have infested these beautiful mountains with their presence.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Kobolds, in the home of the dwarves? How?", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "It saddens me to say, but it appears the kobolds have sprung forth from the halls of Kaladim itself!")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What can I do?", "dlg_22_5")
		AddConversationOption(conversation, "Ok, well I'll be going now. No sense involving myself in matters of violence.")
	StartConversation(conversation, NPC, Spawn, "I've no time to explain now... We must act now before the kobolds around us organize themselves and attack!")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It would be an honor!", "dlg_22_6")
		AddConversationOption(conversation, "I shall take joy in the slaughter of each and every one of the beasts I kill!")
		AddConversationOption(conversation, "Drooling heathens?! Forget it!")
	StartConversation(conversation, NPC, Spawn, "The loose bands of kobold camps in these woods here seem to be slowly assembling into a larger and more organized force. An army no doubt meant to challenge the resistance of dwarves who have constructed outposts here in the Butcherblock Mountains. I need you to whittle down their forces as best you can so that we might stymie their effort and buy my brethren more time as they prepare to make their counter-attack!")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm off!", "dlg_22_7")
	AddConversationOption(conversation, "I don't have a blade, but thanks for the well wishes!")
	StartConversation(conversation, NPC, Spawn, "Good. Now just up ahead are scores of kobold camps. Go and slay at least twenty kobolds. That should thin their ranks enough to stall any assault they have planned. Go swiftly, and may Brell guide your blade!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	SetStepComplete(Spawn, TheKoboldAndTheBeautiful, 2)
	AddConversationOption(conversation, "Any clues as to who or what could be responsible?", "Option9")
	StartConversation(conversation, NPC, Spawn, "Aye, there always seem to be more no matter how many we slay. Someone must be organizing the camps into effective fighting forces.")
end

function Option2_b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	SetStepComplete(Spawn, TheKoboldAndTheBeautiful, 2)
	AddConversationOption(conversation, "Any clues as to who or what could be responsible?", "Option9")
	StartConversation(conversation, NPC, Spawn, "Aye, there always seem to be more no matter how many we slay. Someone must be organizing the camps into effective fighting forces.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Go on.", "Option10")
	StartConversation(conversation, NPC, Spawn, "The other evening, as I was investigating the kobolds' behavior, I happened upon a most unexpected sort of meeting...")
end

function Option10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Then what happened?", "Option11")
	StartConversation(conversation, NPC, Spawn, "A troop of goblins, larger and more sinister than the ones I've seen near the coast, emerged from the darkness. I expected a battle between them and the kobolds, but instead I saw the two parties discuss some matter in a tongue I could not quite decipher.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Perhaps if I intercepted a message from one of the Muckflick runners, we could learn more about their plans.", "Option3")
	AddConversationOption(conversation, "Giant, kobold-loving goblins? Hmm, I think I'll be on my way then.")
	StartConversation(conversation, NPC, Spawn, "The goblins, uh, Muckflicks I think they're called, have established themselves here in the mountains. There they wait for messages from their runners and continue to plot with the Yarpsnarls.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back before you know it!", "GiveMuckflickMessageIntercepted")
	StartConversation(conversation, NPC, Spawn, "That's a great idea! Go, slay one of their runners and bring back the message it carries. Perhaps we can learn more.")
end


function GiveTheKoboldAndTheBeautiful(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheKoboldAndTheBeautiful)
end

function GiveMuckflickMessageIntercepted(NPC, Spawn)
	OfferQuest(NPC, Spawn, MuckflickMessageIntercepted)
end

function GiveSeekingTheKilnkors(NPC, Spawn)
	OfferQuest(NPC, Spawn, SeekingTheKilnkors)
end
