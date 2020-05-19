--[[
	Script Name	: SpawnScripts/Longshadow/KalraathLVin.lua
	Script Purpose	: Kalraath L'Vin 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local DARKELF_MENTOR_QUEST_3 = 337

-- Item ID's
local ALCHEMICAL_MEDIUM = 3404

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kalraath_l_vin/fprt_hood05/quests/kalraathlvin/kalraath_x1_000.mp3", "", "", 2994283695, 3900890535, Spawn)
	
	if HasCompletedQuest(Spawn, DARKELF_MENTOR_QUEST_3) then
		Say(NPC, "I have no business left with you.", Spawn)
	else
		if HasQuest(Spawn, DARKELF_MENTOR_QUEST_3) then
			if GetQuestStep(Spawn, DARKELF_MENTOR_QUEST_3) == 1 then
				AddConversationOption(conversation, "You are right, I am in search of something. I was sent by Aldera, so I am pretty certain you do have something for me.", "dlg_2_1")
			else
				AddConversationOption(conversation, "I fear that somehow, the medium you gave me earlier has been...consumed.", "GiveAnotherMedium")
			end
		end

		AddConversationOption(conversation, "If you insist.")
		StartConversation(conversation, NPC, Spawn, "You look like someone who is searching for something. I do not have anything for you though, so you should search elsewhere.")
	end
end

---------------------------------------------------------------------------------------------------------
--						DARKELF_MENTOR_QUEST_3
--------------------------------------------------------------------------------------------------------

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kalraath_l_vin/fprt_hood05/quests/kalraathlvin/kalraath_x1_001.mp3", "", "", 4039460783, 1284796777, Spawn)
	AddConversationOption(conversation, "She is looking for an alchemical medium.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Really? I'm not expecting any business from her today. What exactly is she up to now?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kalraath_l_vin/fprt_hood05/quests/kalraathlvin/kalraath_x1_002.mp3", "", "", 1820176504, 2436528040, Spawn)
	AddConversationOption(conversation, "An ingestible one. She said you should have it.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "What type of medium is she looking for? There are lots of things that can be used as a medium you know.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kalraath_l_vin/fprt_hood05/quests/kalraathlvin/kalraath_x1_003.mp3", "", "", 3888786503, 1438196062, Spawn)
	AddConversationOption(conversation, "She is teaching me the ancient arts of the Teir'Dal and it is required to complete my lesson.", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "I do, but what exactly does she want to use it for?")
end

function dlg_2_4(NPC, Spawn)
	SetStepComplete(Spawn, DARKELF_MENTOR_QUEST_3, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/kalraath_l_vin/fprt_hood05/quests/kalraathlvin/kalraath_x1_004.mp3", "", "", 85765803, 4029729488, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "Fine, take it, I do not have time to pry the whys and wherefores from you... at least, not at this moment. Let her know she owes me the normal price for it.")
end

function GiveAnotherMedium(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- Alchemical Medium
	if not HasItem(Spawn, ALCHEMICAL_MEDIUM) then
		SummonItem(Spawn, ALCHEMICAL_MEDIUM)
	end

	AddConversationOption(conversation, "Thank you, I will keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "And you seek another. You must be careful with your items, for not everyone you meet will be as generous as I am in giving you another.")
end