--[[
	Script Name	: Quests/Baubbleshire/helping_a_friend_again.lua
	Script Purpose	: Handles the quest, "Helping a Friend, Again"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Baubbleshire
	Quest Giver: Rondo "The Belly" Roundstew
	Preceded by: Helping a Friend (helping_a_friend.lua)
	Followed by: Helping Some 'Friends' (helping_some_friends.lua)
--]]

-- Race ID's
local HALFLING = 7

-- Item ID's
local MISTY_THICKET_SHADEBLOOM = 9868

function Init(Quest)
	-- a Misty Thicket Shadebloom
	AddQuestStepHarvest(Quest, 1,  "I need to collect some Misty Thicket Shadeblooms from around the Baubbleshire.", 6, 100,  "I need to collect some Misty Thicket Shadeblooms and see if they will help convince Maela to get her feelings off of her chest.", 1946, MISTY_THICKET_SHADEBLOOM)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotFlowers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "I don't know what I'll do if this doesn't work.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	while HasItem(Player, MISTY_THICKET_SHADEBLOOM) do
		RemoveItem(Player, MISTY_THICKET_SHADEBLOOM)
	end
end

function step1_complete_gotFlowers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the Misty Thicket Shadeblooms.")
	
	AddQuestStepChat(Quest, 2, "I should speak with Maela now that I have these Shadeblooms.", 1, "I need to collect some Misty Thicket Shadeblooms and see if they will help convince Maela to get her feelings off of her chest.", 0, 2380035)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToMaela")
end

function step2_complete_talkedToMaela(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Maela came out of her shell.")

	-- a Misty Thicket Shadebloom
	while HasItem(Player, MISTY_THICKET_SHADEBLOOM) do
		RemoveItem(Player, MISTY_THICKET_SHADEBLOOM)
	end
	
	AddQuestStepChat(Quest, 3, "I should return to Rondo and let him know the good news.", 1, "I need to collect some Misty Thicket Shadeblooms and see if they will help convince Maela to get her feelings off of her chest.", 0, 2380039)
	AddQuestStepCompleteAction(Quest, 3, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Rondo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Maela opened up to me after I presented her with the Shadeblooms.")
	UpdateQuestDescription(Quest, "After seeing the flowers Maela opened up and told me of her worries.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotFlowers(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToMaela(Quest, QuestGiver, Player)
	end
end