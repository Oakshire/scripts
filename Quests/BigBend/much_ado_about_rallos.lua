--[[
	Script Name		:	much_ado_about_rallos.lua
	Script Purpose	:	Handles the quest, "Much Ado' About Rallos"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Kroota Gukbutcher
	Preceded by		:	Rat Barsh!
	Followed by		:	The Fume and Fire Ceremony
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Zukogg is just outside the Freeport Reserve bank in the center of Big Bend.  Speak to her about the skins.", 1, "Rallos' ceremony requires blood of his enemies, skins of the inferior, and incense.", 11, 1340009)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Zukogg.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Zukogg about the skins.")

	AddQuestStep(Quest, 2, "I need to collect skins.", 1, 100, "I need to collect skins from the barrels nearby.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I collected the skins.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I collected the skins from the barrels.")

	AddQuestStepChat(Quest, 3, "I need to talk to Barch about the blood.", 1, "I need to talk to Barch about the blood.", 11, 1340015)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I talked to Barch about the blood.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I talked to Barch about the blood.")

	AddQuestStepHarvest(Quest, 4, "I need to gather a Vase of Qeynosian Origin.", 1, 100, "The vase should be around here somewhere.", 569, 15179)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found a Vase of Qeynosian Origin.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I should bring the Vase to Barch.")

	AddQuestStepChat(Quest, 5, "I need to bring the vase to Barch, he will give me the blood hopefully.", 1, "I need to bring the vase to Barch.", 11, 1340015)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I talked to Barch.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I talked to Barch and he gave me the Blood of Rallos' Enemies.")
	while HasItem(Player, 15179) do --destroy vase
        RemoveItem(Player, 15179)
    end

	AddQuestStepChat(Quest, 6, "I should talk to Crattok next for the Incense.", 1, "I should talk to Crattok next.", 11, 1340025)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I talked to Crattok.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I talked to Crattok but I will return to Kroota before I pay him.")

	AddQuestStepChat(Quest, 7, "I need to talk with Kroota.", 1, "I need to talk with Kroota.", 11, 1340040)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I talked to Kroota.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I talked to Kroota and the gave me rat carcass snacks to pay Crattok.")

	AddQuestStepChat(Quest, 8, "I need to talk to Crattok again and pay him with rat carcass snacks", 1, "I need to talk with Crattok.", 11, 1340025)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I talked to Crattok and he gave me the incense.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I talked to Crattok.")

	AddQuestStepChat(Quest, 9, "I need to return to Kroota with the items I gathered", 1, "I need to return to Kroota.", 11, 1340040)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The ceremony to honor Rallos Zek will go well, now that the needed items were given to Kroota.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
	    Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
	    Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
	    Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

