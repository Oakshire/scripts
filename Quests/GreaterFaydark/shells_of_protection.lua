--[[
	Script Name	: Quests/GreaterFaydark/shells_of_protection.lua
	Script Purpose	: Handles the quest, "Shells of Protection"
	Script Author	: Scatman
	Script Date	: 2009.03.28
	
	Zone       : Greater Faydark
	Quest Giver: Brink Trudger
	Preceded by: Spider Silk for Brink (spider_silk_for_brink.lua)
	Followed by: None
--]]


function Init(Quest)
	-- Brink's Spaulders (NEED PARSE)
 	-- Brink's Stitched Footwraps
 	-- Brink's Linked Sleeves
 	-- Brink's Leather Boots


	AddQuestStepKill(Quest, 1, "I need to get shells from clawsnap crabs.", 4, 100, "I should head to the beach just east of the spirit bloom nursery and collect the shells of clawsnap crabs and sand sifter turtles.", 752, 1140055, 1140074)
	AddQuestStepKill(Quest, 2, "I need to get shells from sand sifter turtles.", 4, 100, "I should head to the beach just east of the spirit bloom nursery and collect the shells of clawsnap crabs and sand sifter turtles.", 201, 1140027, 1140031)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledCrabs")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledTurtles")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger012.mp3", "", "", 3911384586, 1778696172, Player)
	AddConversationOption(conversation, "Okay, I'll be right back.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, " .. GetName(Player) .. ".  I'll be right here putting this gear together.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledCrabs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have all of the clawsnap shells I need.")
	
	if QuestIsComplete(Player, 155) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_KilledTurtles(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have all of the sand sifter shells I need.")
	
	if QuestIsComplete(Player, 155) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I should have all the shells I need for Brink's armor pieces.")
	
	AddQuestStepChat(Quest, 3, "I should give the shells to Brink Trudger at the spirit bloom nursery.", 1, "I should take these clawsnap and sand sifter shells back to Brink Trudger at the spirit bloom nursery.", 201, 1140005)
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I collected clawsnap and sand sifter shells for Brink Trudger. He'll use them to make hard plates and build armor pieces.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledCrabs(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledTurtles(Quest, QuestGiver, Player)
	end
end
