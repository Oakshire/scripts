--[[
	Script Name	: Quests/Darklight/a_strange_find.lua
	Script Purpose	: Handles the quest, "A Strange Find"
	Script Author	: Scatman
	Script Date	: 2009.01.31
	
	Zone       : Darklight Wood
	Quest Giver: Strange Plant
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	
	-- Sun Bleached Spaulders


	AddQuestStepChat(Quest, 1, "I should bring this plant to Verex N'Va.", 1, ".", 0, 340043)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talkedToVerex")

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

function step1_complete_talkedToVerex(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Verex N'Za.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Verex N'Za.")
	
	AddQuestStepChat(Quest, 2, "I must bring the plant to Sselnyl Do'Zyth.", 1, ".", 0, 340087)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have given the plant to Sselnyl Do'Zyth, mayor of Hate's Envy. She said she would save it as evidence but didn't comment further.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talkedToVerex(Quest, QuestGiver, Player)
	end
end
