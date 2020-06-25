--[[
	Script Name	: Quests/StarcrestCommune/hidden_treasures.lua
	Script Purpose	: Handles the quest, "Hidden Treasures"
	Script Author	: Scatman
	Script Date	: 2008.09.21
	
	Zone       : Starcrest Commune
	Quest Giver: Maareona Ludimintium
	Preceded by: Information Merchants (information_merchants.lua)
	Followed by: Confrontation (confrontation.lua)
--]]

-- Item ID's
local SMALL_METAL_BOX_AND_PAPER = 12950

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to swim in the ferryway in the eastern portion of Starcrest Commune and see if anything is stuck behind the grate.", 1, 100, "I need to see if the undelivered package is stuck in the ferryway in Starcrest Commune.")
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_inspectedBox")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()

			PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona020a.mp3", "", "", 2218692163, 3483095154, Player)
			AddConversationOption(conversation, "Thank you.")
			StartConversation(conversation, QuestGiver, Player, "Good luck.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_inspectedBox(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the package Maareona spoke of.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the package Maareona spoke of.")
	
	AddQuestStepChat(Quest, 2, "I must return this package to Maaereona in the eastern portion of Starcrest Commune.", 1, "I need to see if the undelivered package is stuck in the ferryway in Starcrest Commune.", 0, 2340006)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "")
	GiveQuestReward(Quest, Player)
	
	while HasItem(Player, SMALL_METAL_BOX_AND_PAPER, 1)  do
		RemoveItem(Player, SMALL_METAL_BOX_AND_PAPER)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_inspectedBox(Quest, QuestGiver, Player)
	end
end
