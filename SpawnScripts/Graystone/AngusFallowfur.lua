--[[
	Script Name	: SpawnScripts/Graystone/AngusFallowfur.lua
	Script Purpose	: Angus Fallowfur 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Quest ID's
local A_TIME_FOR_FIGHTING = 289

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomVoice(NPC, Spawn)

	if HasCompletedQuest(Spawn, A_TIME_FOR_FIGHTING) then
		Say(NPC, "Just keep walking.", Spawn)
	elseif HasQuest(Spawn, A_TIME_FOR_FIGHTING) then
		LittleBusyWithQuest(NPC, Spawn)
	else
		Say(NPC, "I'm a little busy right now, sorry.")
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.25 then
		SpawnSet(NPC, "attackable", 0)
		SpawnSet(NPC, "show_level", 0)
		AddTimer(NPC, 500, "StopAttacking", 1, Spawn)
	end
end

function StopAttacking(NPC, Spawn)
	Say(NPC, "This is over.", Spawn)
	ClearHate(NPC)
	ClearEncounter(NPC)
end

function RandomVoice(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "", "", 0, 0, Spawn)
   end
end

---------------------------------------------------------------------------------------------------
--						QUEST 1
---------------------------------------------------------------------------------------------------

function LittleBusyWithQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not QuestStepIsComplete(Spawn, A_TIME_FOR_FIGHTING, 2) then
		AddConversationOption(conversation, "Oh, wow. I saw a shining light up here and thought someone had installed a lighthouse, guess it was just your forehead.", "dlg_8_1")
		AddConversationOption(conversation, "A little busy doing what? Standing here like a lamppost?", "dlg_5_1")
		AddConversationOption(conversation, "Only a little busy?", "dlg_6_1")
		AddConversationOption(conversation, "Why be sorry? It saved me what would probably be a boring conversation.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "I'm a little busy right now, sorry.")
	else
		Say(NPC, "Just keep walking.", Spawn)
	end
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "I'm contemplating, if you must know.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Indeed.")
	StartConversation(conversation, NPC, Spawn, "Busy enough to want you to leave.")
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "That makes two of us.")
	StartConversation(conversation, NPC, Spawn, "And me as well.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Shiny!", "dlg_8_2")
	AddConversationOption(conversation, "Glossy!", "dlg_8_2")
	AddConversationOption(conversation, "Reflective!", "dlg_8_2")
	AddConversationOption(conversation, "B-A-L-D.", "dlg_8_2")
	AddConversationOption(conversation, "Sorry, no. I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Did I hear that correctly?")
end

function dlg_8_2(NPC, Spawn)
	SetStepComplete(Spawn, A_TIME_FOR_FIGHTING, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 1)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/angus_fallowfur/qey_village03/quest_angus_fallowfur_fightover_6c8d9e55.mp3", "This is over.", "", 577369163, 1894242120, Spawn)
	AddConversationOption(conversation, "We'll see!")
	StartConversation(conversation, NPC, Spawn, "You're going down!")
end