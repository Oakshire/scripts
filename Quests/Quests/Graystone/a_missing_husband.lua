--[[
	Script Name	: Quests/Graystone/A Missing Husband
	Script Purpose	: Handles the quest, "a_missing_husband.lua"
	Script Author	: Scatman
	Script Date	: 2009.10.05
	
	Zone       : Graystone Yard
	Quest Giver: Mav Boilfist
	Preceded by: A Stone From Home (a_stone_from_home.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Marv Boilfist.", 1, "I have agreed to look for Marv, Mav's husband, in the Oakmyst Forest.", 0, 1950025) 
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/mav_boilfist/qey_village03/quests/mav_boilfist/mav_boilfist033a.mp3", "", "", 2039112314, 2255017414, Player)
	AddConversationOption(conversation, "Will do.")
	StartConversation(conversation, QuestGiver, Player, "Tell him to hurry home. I miss that old lug.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Marv Boilfist.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Mav's husband.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found Marv Boilfist in the Oakmyst Forest.")
end

function Reload(Quest, QuestGiver, Player, Step)
end