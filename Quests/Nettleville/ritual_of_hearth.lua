--[[
	Script Name	: Quests/Nettleville/ritual_of_hearth.lua
	Script Purpose	: Handles the quest, "Ritual of Hearth"
	Script Author	: Scatman
	Script Date	: 2009.08.21
	
	Zone		 : Nettleville
	Quest Giver: Lakosha Maera
	Preceded by: None
	Followed by: Curious Findings (curious_findings.lua)
--]]

-- Item ID's
local LOOSE_SOIL = 9143

-- Quest ID's
local RITUAL_OF_HEALTH = 300

function Init(Quest)
	AddQuestStep(Quest, 1,  "I need to collect some dirt from under the tree on the west side of The Nettleville Market Row in the south western side of Nettleville.", 1, 100,  "Lakosha Maera has asked that I collect some soil from around Nettleville.", 181)
	AddQuestStep(Quest, 2,  "I need to collect some dirt from under the tree near the entrance to the Peat Bog.", 1, 100,  "Lakosha Maera has asked that I collect some soil from around Nettleville.", 181)
	AddQuestStep(Quest, 3,  "I need to collect some dirt from in front of the gates to South Qeynos in northwestern Nettleville.", 1, 100,  "Lakosha Maera has asked that I collect some soil from around Nettleville.", 181)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gotDirtMarket")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_gotDirtPeatBog")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_gotDirtGates")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera007.mp3", "", "", 127670911, 3559521649, Player)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Just a handful from each spot should be fine. Bring it back to me once you have it collected.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function step1_complete_gotDirtMarket(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected some dirt from under the tree on the west side of The Nettleville Mark Row.")
	if QuestIsComplete(Player, RITUAL_OF_HEALTH) then
		HarvestedAllDirt(Quest, QuestGiver, Player)
	end 
end

function step2_complete_gotDirtPeatBog(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected some dirt from under the tree on the west side of The Nettleville Mark Row.")
	if QuestIsComplete(Player, RITUAL_OF_HEALTH) then
		HarvestedAllDirt(Quest, QuestGiver, Player)
	end 
end

function step3_complete_gotDirtGates(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected some dirt from in front of the gates to South Qeynos.")
	if QuestIsComplete(Player, RITUAL_OF_HEALTH) then
		HarvestedAllDirt(Quest, QuestGiver, Player)
	end 
end

function HarvestedAllDirt(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all the needed soil.")
	AddQuestStepChat(Quest, 4, "I need to return to Lakosha Maera on the west side of Nettleville.", 1, "Now that I have collected all of the soil I should return to Lakosha", 0, 2330053)
	AddQuestStepCompleteAction(Quest, 4, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	-- loose soil
	while HasItem(Player, LOOSE_SOIL, 1) do
		RemoveItem(Player, LOOSE_SOIL)
	end
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Lakosha Maera.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Lakosha.")
	UpdateQuestDescription(Quest, "I have gathered the needed soil to complete Lakosha's ritual. Within the gathered soil Lakosha found something disturbing, however.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gotDirtMarket(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_gotDirtPeatBog(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_gotDirtGates(Quest, QuestGiver, Player)
	end
end