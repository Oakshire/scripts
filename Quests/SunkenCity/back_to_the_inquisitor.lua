--[[
	Script Name	: Quests/SunkenCity/back_to_the_inquisitor.lua
	Script Purpose	: Handles the quest, "Back to the Inquisitor"
	Script Author	: Scatman
	Script Date	    : 2009.07.28 (15.7.2022 by torsten)
	
	Zone       : Sunken City
	Quest Giver: Investigator Curfield
	Preceded by: Finding the Shrine (finding_the_shrine.lua)
	Followed by: Time to Stop a Madman (time_to_stop_a_madman.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should return to Inquisitor Thorson.", 1, "I should return to Inquisitor Thorson and let him know that I have the research he needs.", 0, 1240024)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/investigator_curfeld/fprt_adv01_sunken/investigator_curfeld018.mp3", "", "", 3880047652, 3528846773, Player)
	AddConversationOption(conversation, "I'll take it to him.")
	StartConversation(conversation, QuestGiver, Player, "Why must I be constantly bogged down by the trivialities of lesser beings? Fine, anything to be rid of you. Take this journal to Thorson and trouble me no more.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Inquisitor Thorson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I returned to Inquisitor Thorson with Curfeld's journal.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I took Investigator Curfeld's journal to Thorson, but the book reveals some troubling information. It seems Curfeld is a Prexian who wants to recreate the old ritual that nearly destoyed Freeport! Something must be done to stop him!")
end

function Reload(Quest, QuestGiver, Player, Step)
end