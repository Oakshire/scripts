--[[
	Script Name	: Quests/Darklight/reclaiming_the_sablevein_tear.lua
	Script Purpose	: Handles the quest, "Reclaiming the Sablevein Tear"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Verex N'Za
	Preceded by: The First Step (the_first_step.lua)
	Followed by: None
--]]


function Init(Quest)
	


	AddQuestStepKill(Quest, 1, "I need to destroy eight of the elementals inside the Sablevein Tear!", 8, 100, ".", 611, 340063, 340059, 340064)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedPulverizers")

end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(QuestGiver, "voiceover/english/neriak/verex_n_za/darklight_wood/hates_envy/verex/verex013.mp3", "", "", 3010718218, 2537871754, Player)
			AddConversationOption(conversation, "I will return.")
			StartConversation(conversation, QuestGiver, Player, "I thought so.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedPulverizers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the elementals.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the elementals.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Verex N'Za.", 1, ".", 0, 340043)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have destroyed the elementals within the Sablevein Tear. Through my help, the miners of Hate's Envy will be able to go back to work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedPulverizers(Quest, QuestGiver, Player)
	end
end
