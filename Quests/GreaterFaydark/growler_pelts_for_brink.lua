--[[
	Script Name	: Quests/GreaterFaydark/growler_pelts_for_brink.lua
	Script Purpose	: Handles the quest, "Growler Pelts for Brink"
	Script Author	: Scatman
	Script Date	: 2009.03.28
	
	Zone       : Greater Faydark
	Quest Giver: Brink Trudger
	Preceded by: None
	Followed by: Spider Silk for Brink (spider_silk_for_brink.lua)
--]]


function Init(Quest)
	-- Brink's Finely Crafted Earring
	-- Brink's Carved Wooden Bow
	-- Brink's Finely Stitched Bracers


	AddQuestStepKill(Quest, 1, "I need to get growler pelts. The growlers should be found west of the spirit bloom nursery.", 5, 100, "I need to acquire growler pelts for Brink Trudger. I should be able to find the growlers just west of the spirit bloom nursery.", 93, 1140021, 1140033)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledGrowlers")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger003_offer.mp3", "", "", 179963171, 4058842652, Player)
	AddConversationOption(conversation, "This should be no problem.")
	StartConversation(conversation, QuestGiver, Player, "Great! I appreciate it!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledGrowlers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should have enough growler pelts now for Brink.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I should have enough growler pelts now for Brink.")
	
	AddQuestStepChat(Quest, 2, "I should take the growler pelts back to Brink Trudger.", 1, "I should take these growler pelts to Brink Trudger. He should be busy sewing near the spirit bloom nursery.", 93, 1140005)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to help Brink Trudger by getting growler hides and giving them to him. He'll be able to use the hides to make leather armor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledGrowlers(Quest, QuestGiver, Player)
	end
end
