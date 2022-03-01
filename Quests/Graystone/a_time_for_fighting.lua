--[[
	Script Name	: Quests/Graystone/a_time_for_fighting.lua
	Script Purpose	: Handles the quest, "A Time for Fighting"
	Script Author	: Scatman
	Script Date	: 2009.09.27
	
	Zone       : Graystone Yard
	Quest Giver: Burk Stoneshatter
	Preceded by: None
	Followed by: Late Shipment (late_shipment.lua)
--]]

local ATIMEFORFIGHTING = 289

function Init(Quest)
	
	-- Ring of the Graystone Mystics
	-- Ring of the Graystone Brawlers

	AddQuestStepChat(Quest, 1, "I need to pick a fight with Marus Donoval. I need should make a joke about the smell of his feet. Burk says he should be in the tavern.", 1, "Burk has given me a list of people, their locations, and insults meant to goad them into fighting me.", 0, 2350035) 
	AddQuestStepChat(Quest, 2, "I need to pick a fight with Angus Fallowfur. I should make a joke about his baldness. Burk says he should be behind the armory, on the corner closest to the docks.", 1, "Burk has given me a list of people, their locations, and insults meant to goad them into fighting me.", 0, 2350009)
	AddQuestStepChat(Quest, 3, "I need to pick a fight with Dunda Frostgrip. I should make mention of Mav Boilfist near her. Burk says I can find her just south-west of the scribe's shop.", 1, "Burk has given me a list of people, their locations, and insults meant to goad them into fighting me.", 0, 2350047)
	AddQuestStepCompleteAction(Quest, 1, "step1_completed_talkedToMarus")
	AddQuestStepCompleteAction(Quest, 2, "step2_completed_talkedToAngus")
	AddQuestStepCompleteAction(Quest, 3, "step3_completed_talkedToDunda")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/burk_stoneshatter/qey_village03/quests/burk_stoneshatter/burk_stoneshatter013a.mp3", "", "", 1501046701, 172770081, Player)
	AddConversationOption(conversation, "All right. I will return.")
	StartConversation(conversation, QuestGiver, Player, "Return to me once you've fought them all.")
end

function Declined(Quest, QuestGiver, Player)
end

function step1_completed_talkedToMarus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have picked a fight with Marus Donoval.")

	if QuestIsComplete(Player, ATIMEFORFIGHTING) then
		insultsGiven(Quest, QuestGiver, Player)
	end
end

function step2_completed_talkedToAngus(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have picked a fight with Angus Fallowfur.")

	if QuestIsComplete(Player, ATIMEFORFIGHTING) then
		insultsGiven(Quest, QuestGiver, Player)
	end
end

function step3_completed_talkedToDunda(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have picked a fight with Dunda Frostgrip.")

	if QuestIsComplete(Player, ATIMEFORFIGHTING) then
		insultsGiven(Quest, QuestGiver, Player)
	end
end

function insultsGiven(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have started fights with all of the people Burk suggested.")

	AddQuestStepChat(Quest, 4, "I need to return to Burk Stoneshatter near the docks.", 1, "I should return to Burk now that I've been in a few fights.", 0, 2350007)
	AddQuestStepCompleteAction(Quest, 4, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Burk Stoneshatter.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Burk.")
	UpdateQuestDescription(Quest, "I have gotten into three fights around Graystone Yard at the suggestion of Burk Stoneshatter.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_completed_talkedToMarus(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_completed_talkedToAngus(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_completed_talkedToDunda(Quest, QuestGiver, Player)
	end
end