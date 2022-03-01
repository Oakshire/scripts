--[[
	Script Name	: Quests/QueensColony/ebiks_missing_parts.lua
	Script Purpose	: Handles the quest, "Ebik's Missing Parts"
	Script Author	: Scatman
	Script Date	: 2008.09.04
	
	Zone       : The Queen's Colony
	Quest Giver: Ebik Wobblecog
	Preceded by: None
	Followed by: None
--]]

local EbiksMissingParts = 185

function Init(Quest)
	-- Constructed Wrist Spanner
  
	AddQuestStep(Quest, 1, "I still need to get a size 7 clunker. Perhaps Ebik lost it while getting a better view of the bay.", 1, 100, "I need to find the three items that were lost on this island. I should keep an eye out while I explore the colony.", 173)
	AddQuestStep(Quest, 2, "I still need to get a copper-coated springer. It's possible Ebik could have lost it over the side of the ship.", 1, 100, "I need to find the three items that were lost on this island. I should keep an eye out while I explore the colony.", 216)
	AddQuestStep(Quest, 3, "I still need to get a triangle spinner. Maybe Ebik was trying to run from something and dropped it?", 1, 100, "I need to find the three items that were lost on this island. I should keep an eye out while I explore the colony.", 86)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete")


end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
	   if GetDistance(Player, QuestGiver) < 30 then
	 FaceTarget(QuestGiver, Player)
	 conversation = CreateConversation()
	 
	 PlayFlavor(QuestGiver, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_secondtalk_01.mp3", "", "nod", 688070292, 1255284608, Player)
	 AddConversationOption(conversation, "Okay.")
	 StartConversation(conversation, QuestGiver, Player, "I need all the parts, I can't leave without them and luckily the boat to Qeynos hasn't showed up yet. Please help me find all of the parts.")
	   end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete(Quest, QuestGiver, Player)
--	UpdateQuestStepDescription(Quest, 1, "I have Ebik's size 7 clunker.")
	UpdateQuestStepDescription(Quest, 1, "I found a size 7 clunker.")
	if QuestIsComplete(Player, EbiksMissingParts) then
	   givePartsToEbik(Quest, QuestGiver, Player)
	end
end

function step2_complete(Quest, QuestGiver, Player)
--	UpdateQuestStepDescription(Quest, 2, "I have Ebik's copper-coated springer.")
	UpdateQuestStepDescription(Quest, 2, "I found a copper-coated springer.")
	if QuestIsComplete(Player, EbiksMissingParts) then
	   givePartsToEbik(Quest, QuestGiver, Player)
	end
end

function step3_complete(Quest, QuestGiver, Player)
--	UpdateQuestStepDescription(Quest, 3, "I have Ebik's triangle spinner.")
	UpdateQuestStepDescription(Quest, 3, "I found a triangle spinner.")
	if QuestIsComplete(Player, EbiksMissingParts) then
	   givePartsToEbik(Quest, QuestGiver, Player)
	end
end

function givePartsToEbik(Quest, QuestGiver, Player)
--	UpdateQuestTaskGroupDescription(Quest, 1, "I have found all of Ebik's parts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have Ebik's three items.")
	AddQuestStepChat(Quest, 4, "I should bring these parts back to Ebik.", 1, "I found all the parts Ebik needs and I should return them to him.", 0, 2530059)
	AddQuestStepCompleteAction(Quest, 4, "quest_complete_gavePartsToEbik")
end

function quest_complete_gavePartsToEbik(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Ebik the parts I collected.")
	UpdateQuestDescription(Quest, "I gave Ebik Wobblecog all the parts he needed. Hopefully now he can meet up with his father and evade their family's famous curse.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	   step2_complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	   step3_complete(Quest, QuestGiver, Player)
	end
end
