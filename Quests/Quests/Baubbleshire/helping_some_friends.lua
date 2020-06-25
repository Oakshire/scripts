--[[
	Script Name	: Quests/Baubbleshire/helping_some_friends.lua
	Script Purpose	: Handles the quest, "Helping Some 'Friends'"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : The Baubbleshire
	Quest Giver: Rondo "The Belly" Roundstew
	Preceded by: Helping a Friend, Again (helping_a_friend_again.lua)
	Followed by: Paying Off a Sweet Debt (paying_off_a_sweet_debt.lua)
--]]

-- Quest ID's
local HELPING_SOME_FRIENDS = 325 -- was 72

-- Item ID's
local PRANK_PREPAREDNESS_KIT = 10574

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to examine the Prank Preparedness Kit that Rondo gave me.", 1, 100, "Before I execute Rondo's plan I must go through the Prank Preparedness Kit he has given me. Rondo will give me another kit if I misplace the first one.", 0)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_examinedKit")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right. Give me the kit.", "GiveMeKit")
	StartConversation(conversation, QuestGiver, Player, "Delicious! I've put everything you'll need in this PPK, that's Prank Preparedness Kit. Remember, don't let them think you're up to anything, it's very important!")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
	while HasItem(Player, PRANK_PREPAREDNESS_KIT) do
		RemoveItem(Player, PRANK_PREPAREDNESS_KIT)
	end
end

function step1_complete_examinedKit(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have examined the Prank Preparedness Kit and know what I must do now.")
	UpdateQuestTaskGroupDescription(Quest, 1, "After going through the Prank Preparedness Kit I know what I must do.")
	
	AddQuestStepChat(Quest, 2, "I must find Drundo Parn in the tavern and give him a disguised walnut pie.", 1, "I need to visit Drundo, Jayla, and Bolo and set them up for Rondo's pranks.", 0, 2380026)
	AddQuestStepChat(Quest, 3, "I must find Jayla Midhop outside the armory and give her this forged note.", 1, "I need to visit Drundo, Jayla, and Bolo and set them up for Rondo's pranks.", 0, 2380009)
	AddQuestStepChat(Quest, 4, "I must find Bolo Brassharp outside of the inn and convince him to see Jayla with a bloat pie.", 1, "I need to visit Drundo, Jayla, and Bolo and set them up for Rondo's pranks.", 0, 2380017)
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_talkedToDrundo")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_talkedToJayla")
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_talkedToBolo")
end

function step2_complete_talkedToDrundo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Drundo the walnut pie.")
	
	if QuestIsComplete(Player, HELPING_SOME_FRIENDS) then
		pranks_given(Quest, QuestGiver, Player)
	end
end

function step3_complete_talkedToJayla(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have given Jayla the forged note.")
	
	if QuestIsComplete(Player, HELPING_SOME_FRIENDS) then
		pranks_given(Quest, QuestGiver, Player)
	end
end

function step4_complete_talkedToBolo(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have given Bolo the bloat pie.")
	
	if QuestIsComplete(Player, HELPING_SOME_FRIENDS) then
		pranks_given(Quest, QuestGiver, Player)
	end
end

function pranks_given(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have set Druno, Jayla, and Bolo up for Rondo's pranks.")
	
	AddQuestStepChat(Quest, 5, "I have done what Rondo wanted and should return to him.", 1, "Now that Rondo's pranks are ready to go, I should speak with him.", 0, 2380039)
	AddQuestStepCompleteAction(Quest, 5, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Rondo.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Rondo.")

	-- Prank Preparedness Kit
	while HasItem(Player, PRANK_PREPAREDNESS_KIT) do
		RemoveItem(Player, PRANK_PREPAREDNESS_KIT)
	end
	
	UpdateQuestDescription(Quest, "I have helped Rondo set his friends up impending pranks. Rondo was absolutely giddy about it.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_examinedKit(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_talkedToDrundo(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_talkedToJayla(Quest, QuestGiver, Player)
	elseif Step == 4 then
		step4_complete_talkedToBolo(Quest, QuestGiver, Player)
	end
end