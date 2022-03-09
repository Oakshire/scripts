--[[
	Script Name	: SpawnScripts/Graystone/MarusDonoval.lua
	Script Purpose	: Marus Donoval 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Quest ID's
local A_TIME_FOR_FIGHTING = 289
local LATE_SHIPMENT = 290

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, A_TIME_FOR_FIGHTING) then
		if HasCompletedQuest(Spawn, LATE_SHIPMENT) then
			WellLookWhoItIs(NPC, Spawn)
		elseif HasQuest(Spawn, LATE_SHIPMENT) then
			if GetQuestStep(Spawn, LATE_SHIPMENT) >= 6 then
				WellLookWhoItIs(NPC, Spawn)
			else
				Say(NPC, "Hah, that was great! You're alright you know that?", Spawn)
			end
		else
			Say(NPC, "Hah, that was great! You're alright you know that?", Spawn)
		end
	elseif HasQuest(Spawn, A_TIME_FOR_FIGHTING) then
		HeyRelaxingHereWithQuest(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quest_marus_donoval_notonquest_b531a95c.mp3", "Hey! I'm relaxing here.", "", 1804521039, 439298696, Spawn)
--		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval001.mp3", "Hey! I'm relaxing here.", "", 1272547244, 528166171, Spawn)
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
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quest_marus_donoval_fightover_c271419f.mp3", "Alright, alright. I'd say that's enough.", "", 2321626411, 1133430573, Spawn)
	ClearHate(NPC)
	ClearEncounter(NPC)
end

function HeyRelaxingHereWithQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not QuestStepIsComplete(Spawn, A_TIME_FOR_FIGHTING, 1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval001.mp3", "", "", 1272547244, 528166171, Spawn)
		AddConversationOption(conversation, "Is someone making cheese in here?", "dlg_4_1")
		AddConversationOption(conversation, "Do you get paid to sit around all day doing nothing?", "dlg_1_1")
		AddConversationOption(conversation, "Your father was a slacker, too, wasn't he?", "dlg_2_1")
		AddConversationOption(conversation, "Well why don't you relax somewhere else, buddy?", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Hey! I'm relaxing here.")
	else
		Say(NPC, "Hah, that was great! You're alright you know that?", Spawn)
	end
end

---------------------------------------------------------------------------------------------
--				QUEST 1
---------------------------------------------------------------------------------------------
function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval001answer1.mp3", "", "", 1797143757, 3864854180, Spawn)
	AddConversationOption(conversation, "Hmm.")
	StartConversation(conversation, NPC, Spawn, "Eh, I'm a hard worker. My boss knows that.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval001answer2.mp3", "", "", 283337044, 2652532195, Spawn)
	AddConversationOption(conversation, "Really?")
	StartConversation(conversation, NPC, Spawn, "My father built the floor you're standing on, for all you know!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval001answer3.mp3", "", "", 3193402669, 2023299810, Spawn)
	AddConversationOption(conversation, "Whoops.")
	StartConversation(conversation, NPC, Spawn, "Hah hah! I like you!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval002.mp3", "", "", 2325284648, 2510217170, Spawn)
	AddConversationOption(conversation, "Oh, never mind, I think that smell is your feet.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "I don't think so.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval003.mp3", "", "", 1447882078, 784389169, Spawn)
	AddConversationOption(conversation, "I thought someone was making cheese because of that horrible smell, but now that I'm closer to you I believe the smell is your feet.", "dlg_4_3")
	AddConversationOption(conversation, "Nothing, sorry, I'll be going.")
	StartConversation(conversation, NPC, Spawn, "What did you say?")
end

function dlg_4_3(NPC, Spawn)
	SetStepComplete(Spawn, A_TIME_FOR_FIGHTING, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 100)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval003a.mp3", "", "", 129148664, 3190606304, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Ooh, that's a good one.")
end

-----------------------------------------------------------------------------------------------------------------------
--				QUEST 2
-----------------------------------------------------------------------------------------------------------------------

function WellLookWhoItIs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval004.mp3", "", "", 2785464919, 2918822894, Spawn)
	
	if GetQuestStep(Spawn, LATE_SHIPMENT) == 6 then
		AddConversationOption(conversation, "Sometimes, yes. Right now I need to ask you about a package though.", "AskAboutPackage")
	end
	
	AddConversationOption(conversation, "Yeah, let's go!", "LetsGo")
	AddConversationOption(conversation, "Nope, not anymore.")
	StartConversation(conversation, NPC, Spawn, "Well look who it is. Still fighting?")
end

function LetsGo(NPC, Spawn)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 100)
end

function AskAboutPackage(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval005.mp3", "", "", 297443074, 3794904170, Spawn)
	AddConversationOption(conversation, "There was a package for Burk Stoneshatter. The shipment was GG4QC and it was reported as being unloaded but isn't in overflow, and isn't on the docks, and hasn't been delivered. The Shipping Coordinator said I should speak with you.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "I can help. What do you need?")
end

function dlg_20_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval006.mp3", "", "", 3783525520, 2258184655, Spawn)
	AddConversationOption(conversation, "In the water? Oh no.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "GG4QC you say? Yeah, I know the one. Three crates, it was. I do remember unloading them. If what you say is true then I think they may have taken a bath, hah hah!")
end

function dlg_20_3(NPC, Spawn)
	SetStepComplete(Spawn, LATE_SHIPMENT, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/marus_donoval/qey_village03/quests/marus_donoval/marus_donoval007.mp3", "", "", 313118896, 4113217971, Spawn)
	AddConversationOption(conversation, "All right. Thanks.")
	StartConversation(conversation, NPC, Spawn, "These things happen, you know. You should go talk to the Shipping Coordinator if you ever want to get that shipment.")
end