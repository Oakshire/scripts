--[[
	Script Name	: Quests/Baubbleshire/embers_for_xoort.lua
	Script Purpose	: Handles the quest, "Embers for Xoort"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	(Script Fixes & Callout: Dorbin 2021.01.07)
	Zone       : The Baubbleshire
	Quest Giver: Sage Xoort
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather coals from the fiery forgotten guardians in the Forest Ruins.", 2, 70, "I need to gather an everburning coal from the fiery forgotten guardians in the Forest Ruins.", 183, 1960019, 8270009,8270062)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotGoal")
    UpdateQuestZone(Quest,"Forest Ruins")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right already!")
	StartConversation(conversation, QuestGiver, Player, "Well? What are you waiting for? Go, go, GO!")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_gotGoal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I gathered an everburning coal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered the embers that Sage Xoort needed from the guardians.")
	UpdateQuestZone(Quest, "Baubbleshire")	

	AddQuestStepChat(Quest, 2, "I need to speak with Sage Xoort in the Baubbleshire.", 1, "I need to speak with Sage Xoort and give him the embers I gathered.", 0, 2380043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Sage Xoort in the Baubbleshire.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Sage Xoort all five embers that I gathered from the guardians.")
	UpdateQuestDescription(Quest, "I gathered the coals for Xoort's experimentation. Turns out to be a good thing that I did. Xoort gave me some coin for the job.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotGoal(Quest, QuestGiver, Player)
		elseif Step == 2 then
		    quest_complete(Quest, QuestGiver, Player)
	end
end