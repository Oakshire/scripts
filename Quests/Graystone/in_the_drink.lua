--[[
	Script Name	: Quests/Graystone/in_the_drink.lua
	Script Purpose	: Handles the quest, "In the Drink"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Graystone Yard
	Quest Giver: Shipping Coordinator
	Preceded by: Late Shipment (late_shipment.lua)
	Followed by: Visiting a Friend (visiting_a_friend.lua)
--]]

-- Quest ID's
local IN_THE_DRINK = 291

-- Item ID's
local LOCATION_BUOYS = 9109

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to attatch a location buoy to the first crate lost in the water", 1, 100, "I need to attatch a location buoy to each of the three lost boxes in the water.", 0)
	AddQuestStep(Quest, 2, "I need to attatch a location buoy to the second crate lost in the water", 1, 100, "I need to attatch a location buoy to each of the three lost boxes in the water.", 0)
	AddQuestStep(Quest, 3, "I need to attatch a location buoy to the third crate lost in the water", 1, 100, "I need to attatch a location buoy to each of the three lost boxes in the water.", 0)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_buoy1Attatched")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_buoy2Attatched")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_buoy3Attatched")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	-- Location Buoys
	if not HasItem(Player, LOCATION_BUOYS, 1) then
		SummonItem(Player, LOCATION_BUOYS, 1)
	end

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Come back as soon as you've connected the last of them.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_buoy1Attatched(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have attached a location buoy to the first crate.")
	
	if QuestIsComplete(Player, IN_THE_DRINK) then
		all_buoys_placed(Quest, QuestGiver, Player)
	end
end

function step2_complete_buoy2Attatched(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have attached a location buoy to the second crate.")
	
	if QuestIsComplete(Player, IN_THE_DRINK) then
		all_buoys_placed(Quest, QuestGiver, Player)
	end
end

function step3_complete_buoy3Attatched(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have attached a location buoy to the third crate.")
	
	if QuestIsComplete(Player, IN_THE_DRINK) then
		all_buoys_placed(Quest, QuestGiver, Player)
	end
end

function all_buoys_placed(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have attatched a location buoy to each of the lost boxes.")
	
	-- Location Buoys
	while HasItem(Player, LOCATION_BUOYS) do
		RemoveItem(Player, LOCATION_BUOYS)
	end
	
	AddQuestStepChat(Quest, 4, "I need to tell the Shipping Coordinator that everything is hooked up.", 1, "I have recovered Burk's package, along with other portions of the missing shipment, from the water.", 0, 2350004)
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToCoordinator")
end

function step4_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken to the Shipping Coordinator.")
	
	AddQuestStepChat(Quest, 5, "I need to give Burk his package.", 1, "I have recovered Burk's package, along with other portions of the missing shipment, from the water.", 0, 2350007)
	AddQuestStepCompleteAction(Quest, 5, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have given Burk his package.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Burk his package.")
	UpdateQuestDescription(Quest, "I helped the Shipping Coordinator take care of the sunk cargo. I also found Burk's shipment and got it to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_buoy1Attatched(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_buoy2Attatched(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_buoy3Attatched(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedToCoordinator(Quest, QuestGiver, Player)
	end
end