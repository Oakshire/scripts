--[[
	Script Name	: Quests/Oakmyst/booze_in_the_drink.lua
	Script Purpose	: Handles the quest, "Booze in the Drink"
	Script Author	: Scatman
	Script Date	: 2008.09.19
	
	Zone       : Oakmyst Forest
	Quest Giver: Marv Boilfist
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	-- a keg of booze
	AddQuestStepObtainItem(Quest, 1, "I need to rescue the drowning booze.", 8, 100, "Marv Boilfist has lost a large amount of booze off the docks in Oakmyst Forest. He has asked that I help retrieve it.", 2285, 1950) 
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_RescuedBooze")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 
	 AddConversationOption(conversation, "I'll be back.")
	 StartConversation(conversation, QuestGiver, Player, "Glad to hear it!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_RescuedBooze(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have rescued the booze from the water.")

	AddQuestStepChat(Quest, 2, "I need to bring the booze back to Marv Boilfist.", 1, "Marv Boilfist has lost a large amount of booze off the docks in Oakmyst Forest. He has asked that I help retrieve it.", 0, 1950025) 
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_SpokeWithMarv")
end

function Step2_Complete_SpokeWithMarv(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Marv his booze.")
	
	-- a keg of booze
	while HasItem(Player, 1950) do
		RemoveItem(Player, 1950)
	end

	AddQuestStepChat(Quest, 3, "I need to tell Lieutenant Charlin of the Blackburrow Stout I found.", 1, "Marv Boilfist has lost a large amount of booze off the docks in Oakmyst Forest. He has asked that I help retrieve it.", 0, 1950008) 
	AddQuestStepCompleteAction(Quest, 3, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Charlin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Marv's booze as well as some Blackburrow Stout.")
	
	-- blackburrow stout
	while HasItem(Player, 3774) do
		RemoveItem(Player, 3774)
	end
	
	UpdateQuestDescription(Quest, "I have found Marv's kegs for him. One keg I brought back wasn't one of Marv's, but was a keg of Blackburrow Stout. I reported this to the Qeynos Guard at Marv's suggestion.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_RescuedBooze(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_SpokeWithMarv(Quest, QuestGiver, Player)
	end
end