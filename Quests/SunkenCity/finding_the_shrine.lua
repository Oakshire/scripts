--[[
	Script Name	: Quests/SunkenCity/finding_the_shrine.lua
	Script Purpose	: Handles the quest, "Finding the Shrine"
	Script Author	: Scatman
	Script Date	    : 2009.07.28 (15.7.2022 by torsten)
	
	Zone       : Sunken City
	Quest Giver: Investigator Curfield
	Preceded by: Taking Back from the Blackshields (taking_back_from_the_blackshields.lua)
	Followed by: Back to the Inquisitor (back_to_the_inquisitor.lua)
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to determine if anything remains of the shrine to Prexus", 30, "I must search the Sunken City for a ruined shrine of Prexus.", 0, 6.9727, 2.36759, -54.6769)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundShrine")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld014.mp3", "", "", 4099914097, 989172019, Player)
	AddConversationOption(conversation, "I will do so. Hopefully I'll be in one piece.")
	StartConversation(conversation, QuestGiver, Player, "I heard the shrine used to be found in the northern central part of Plank's Edge. Try going east a bit, then north. Return to me when you have the knowledge I require.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundShrine(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a shrine that seems to hum with mystical power.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the haunted ruins of an old shrine.")

	AddQuestStepChat(Quest, 2, "I should return to Investigator Curfeld and tell him what I found.", 1, "I must return to Investigator Curfeld and tell him I found the shrine.", 0, 1240027)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I reported back to Investigator Curfeld.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to Curfeld.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the remains of the shrine to Prexus, which was guarded by the remains of the fallen Darkfathom members. I heard a distinct hum, which indicated to me that the shrine still has some sort of power. I reported back to Investigator Curfeld and let him know.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundShrine(Quest, QuestGiver, Player)
	end
end