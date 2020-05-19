--[[
	Script Name	: Quests/Castleview/the_commune.lua
	Script Purpose	: Handles the quest, "The Commune"
	Script Author	: Scatman
	Script Date	: 2009.01.24
	
	Zone       : Castleview Hamlet
	Quest Giver: Vindain Greenfaith
	Preceded by: Targeting Corruption (targeting_corruption.lua)
	Followed by: Sending the Word (sending_the_word.lua)
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find the spririt of the sprite that attacked me and speak with it.", 1, "I need to find the spirit of the fallen sprite.", 0, 2360059)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToSpirit")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/vindain_greenfaith/qey_village04/quests/vindain/vindain030.mp3", "", "", 204706144, 262934722, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good. Return to me when this is done.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_talkedToSpirit(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with the sprite.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Vindain Greenfaith.", 1, "I need to find the spirit of the fallen sprite.", 0, 2360007)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Vindain Greenfaith.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with the spirit of the fallen sprite.")
	UpdateQuestDescription(Quest, "I have spoken with the fallen sprite. Though it was hard to get any concrete information, apparently something is going on in the Oakmyst Forest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToSpirit(Quest, QuestGiver, Player)
	end
end