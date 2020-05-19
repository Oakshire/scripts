--[[
	Script Name	: SpawnScripts/ScaleYard/MelvinDunford.lua
	Script Purpose	: Melvin Dunford 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local QUEST_1 = 340 --142 --A Puppy for your potion--

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/rcp_melvin001.mp3", "", "", 1659032711, 682876, Spawn)
		AddConversationOption(conversation, "I come on behalf of Brood Matron Vrim Malthyk. She is offering you one last chance to hand over the alchemy supplies, else we do something drastic.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Leave me be. Leave me be! Can't a man take a break and enjoy a pint?")
	else
		choice = math.random(1,4)

		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_20cb1b7.mp3", "A guy walks into a bar. He says, 'Ouch'. Another guy walks into a bar and says, 'Ouch'. Huhhuh... You think he woulda learned from the first guy.", "", 17568823, 2141665228, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_a9f71ce1.mp3", "Hiccup! Oh, that's enough for me. Why, you buyin'?", "", 4292786812, 2328026074, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_c5a18e4.mp3", "There's three kinda people in this world... I just can't remember any of them right now.", "", 2023843614, 2958937913, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_d7a2153e.mp3", "Anna, darlin'... This one's fer you. Hiccup!", "", 3181613263, 3427443494, Spawn)
		else
		end
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/rcp_melvin002.mp3", "", "", 1957658204, 2931153413, Spawn)
	AddConversationOption(conversation, "Who said anything about you? What about Wittens? Did you ever consider his safety?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Huh ha! Your idle threats don't scare me none. I got plenty of mates watching my back. You can't touch me!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/rcp_melvin003.mp3", "", "", 2611575184, 1662935081, Spawn)
	AddConversationOption(conversation, "[Show Melvin the collar]", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "What? Wittens? No, you didn't... W-what's that in your hand?")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/rcp_melvin004.mp3", "", "", 1087811847, 81547976, Spawn)
	AddConversationOption(conversation, "Then tell me where the components are? NOW!", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "Oh please, please. Don't hurt Wittens! He was a gift from my late wife! You must let him go! You must!")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_1, 1)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/rcp_melvin005.mp3", "", "", 3362443904, 3525434980, Spawn)
	AddConversationOption(conversation, "Your... cooperation will be noted. With any luck, Vrim should release Wittens unharmed.", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Fine... fine. Let me have your journal for a moment, I'll write down the location for you. Please! Please, don't hurt Wittens!")
    
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_a9f71ce1.mp3", "Hiccup! Oh, that's enough for me. Why, you buyin'?", "", 4292786812, 2328026074, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_20cb1b7.mp3", "A guy walks into a bar. He says, 'Ouch'. Another guy walks into a bar and says, 'Ouch'. Huhhuh... You think he woulda learned from the first guy.", "", 17568823, 2141665228, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_d7a2153e.mp3", "Anna, darlin'... This one's fer you. Hiccup!", "", 3181613263, 3427443494, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/melvin_dunford/fprt_hood06/quest_melvin_idle_text_c5a18e4.mp3", "There's three kinda people in this world... I just can't remember any of them right now.", "", 2023843614, 2958937913, Spawn)
--]]

