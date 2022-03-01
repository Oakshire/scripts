--[[
	Script Name	: SpawnScripts/ForestRuins/ElvicGarrett.lua
	Script Purpose	: Elvic Garrett 
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

local HALF_ELF = 6
local HALFELF_MENTOR_QUEST_4 = 221
local QUEST_1 = 5491

function spawn(NPC)
ProvidesQuest(NPC, 5491)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) then
		HalfElfMentorQuest(NPC, Spawn, conversation)
	else
		if HasCompletedQuest(Spawn, QUEST_1) then
		elseif HasQuest(Spawn, QUEST_1) then
		else
			-- posibily a level req of 3 here too.
			if GetRace(Spawn) == HALF_ELF then
				MyMindOccupied(NPC, Spawn, conversation)
			else
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins_revamp/qst_halfelf_elvic_garrett_notonquest_2d73840b.mp3", "The changes to this land scare me.", "", 2326633148, 4032539718, Spawn)
			end
		end
	end
end

--------------------------------------------------------------------------------------------------------------
--									HALFELF_MENTOR_QUEST_4
--------------------------------------------------------------------------------------------------------------

function HalfElfMentorQuest(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins/quests/elvic/elvic_daelyn000.mp3", "", "", 422032417, 1174930976, Spawn)
	AddConversationOption(conversation, "Daelyn has written something. He would like you to have a copy.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "These lands are not as safe as they once were.")
end

function dlg_0_1(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_4, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins/quests/elvic/elvic_daelyn001.mp3", "", "", 361439431, 2027311841, Spawn)
		AddConversationOption(conversation, "What has your mind occupied?", "MyMindOccupied")
		StartConversation(conversation, NPC, Spawn, "Ah, this is fortuitious. It has been some time since Daelyn has written something. My mind has been occupied as of late, I may have to save reading this for a time when I can focus more on my people.")
	-- check too see what quest the player is on here. also do the check in OfferQuest
	end
end

--------------------------------------------------------------------------------------------------------------
--									QUEST 1
--------------------------------------------------------------------------------------------------------------

function MyMindOccupied(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins/quests/elvic/elvic_daelyn002.mp3", "", "", 873310203, 1695943624, Spawn)
	AddConversationOption(conversation, "I can help.", "dlg_0_3")
	AddConversationOption(conversation, "Well, that's unfortunate. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "My mind is occupied with these lands. Something is off, though I know not what. I offered my assistance to the Qeynos guard, but haven't turned up anything yet.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins/quests/elvic/elvic_daelyn003.mp3", "", "", 3059918187, 1161029478, Spawn)
	AddConversationOption(conversation, "I will see what I can find.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Perhaps you can. I've been patrolling the land around the ruins lately, occasionally I come across abandoned camps. Usually a fire pit or a collection of firewood that hasn't yet been burnt. Sometimes these abandoned camps have what may end up being clues, other times they contain worthless junk. If you could do me the favor of seeking out these camps it may help unwravel the mystery that is going on here.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, QUEST_1) then
		OfferQuest(NPC, Spawn, QUEST_1)
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/elvic_garrett/qey_adv02_ruins/quests/elvic/elvic_daelyn003.mp3", "", "", 3059918187, 1161029478, Spawn)
	AddConversationOption(conversation, "I will see what I can find.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Perhaps you can. I've been patrolling the land around the ruins lately, occasionally I come across abandoned camps. Usually a fire pit or a collection of firewood that hasn't yet been burnt. Sometimes these abandoned camps have what may end up being clues, other times they contain worthless junk. If you could do me the favor of seeking out these camps it may help unwravel the mystery that is going on here.")
end

