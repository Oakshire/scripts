--[[
	Script Name	: SpawnScripts/SunkenCity/ManiusGalla.lua
	Script Purpose	: Manius Galla 
	Script Author	: Neatz09
	Script Date	: 12/31/2018
	Script Notes	: 
--]]

local QUEST_1 = 389

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
	
	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) then
			if GetQuestStep(Spawn, QUEST_1) == 6 then
				AddConversationOption(conversation, "I've killed the raiders.", "dlg_17_1")
			end
		else
			AddConversationOption(conversation, "I want to join your gang.", "dlg_9_1")
		end
	end
	AddConversationOption(conversation, "I didn't see anything.")
	StartConversation(conversation, NPC, Spawn, "Mind your own business. If you keep gawking, you'll be walking away with a limp. And that's only because I'm in a good mood today.")
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

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why don't you give me a test?", "dlg_9_2")
	AddConversationOption(conversation, "I don't need to take this from you. Good bye.")
	StartConversation(conversation, NPC, Spawn, "Did you hear that, boys? This runt wants to join our gang! HA HA HA HA! You couldn't fight your way out of a wet parchment bag let alone join us. HA HA HA! We keep people safe inside the city districts!  You're better off paying us for protection, runt.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
OfferQuest(NPC, Spawn, QUEST_1)
	AddConversationOption(conversation, "Okay, I'll be back when they're dead.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "A test, huh? Yeah ... hey, boys ... let's give this runt a bit of a test. Okay, here's your test: Go deeper in this place and find some of the lackeys who hang around the raiders. Kill some of them and maybe you can work for us.")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Don't worry about it.", "dlg_9_4")
	StartConversation(conversation, NPC, Spawn, "Don't even bother coming back if they ain't!")
end

function dlg_17_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll check back.")
	StartConversation(conversation, NPC, Spawn, "Crispin already heard. Hpmh ... You got lucky, I guess. Either way, those Raiders won't bother our clients in the Court anymore. I don't know if I should let you join our gang ... let me think about it.")
end