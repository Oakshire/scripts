--[[
	Script Name	: Quests/SunkenCity/gerbards_necklace.lua
	Script Purpose	: Handles the quest, "Gerbard's Necklace
	Script Author	: Scatman
	Script Date	    : 2009.08.01 (15.7.2022 by torsten)
	
	Zone       : Sunken City
	Quest Giver: Gerbard the Snitch
	Preceded by: None
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find five pirate coins.", 5, 50, "I need to find five pirate coins.", 1240044, 1240035, 1240036)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundCoins")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch002.mp3", "", "", 4172245160, 2238267271, Player)
	AddConversationOption(conversation, "Thanks, I'll search out some pirate coins.")
	StartConversation(conversation, QuestGiver, Player, "Where do you think they come from? They're pirate coins!  Those undead buggers roam around where it's wet.  I'd go get them myself, but I gambled my sword away in a sure bet.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundCoins(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found five pirate coins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found five pirate coins.")

	AddQuestStepChat(Quest, 2, "I need to return to Gerbard.", 1, "I need to return to Gerbard.", 0, 1240021)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Gerbard.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Gerbard.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the five pirate coins that Gerbard the Snitch needed.")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundCoins(Quest, QuestGiver, Player)
	end
end