--[[
	Script Name		:	Quests/TheSerpentSewer/gnasher.lua
	Script Purpose	:	Handles the quest, "Gnasher"
	Script Author	:	premierio015
	Script Date		:	02.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	an axe edge( Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to find an unsharpened axehead on the Murkwater inducts.", 1, 10, "I need to find a proper axe head so that I can merge this fine edge onto it.  Perhaps some of the Murkwaters in the sewers might have something like that on them.  I'm thinking the newly inducted ones might have something like that.", 679, 1550011, 1550048)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found an unsharpened axehead on a Murkwater induct")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to find an axehead that hasn't been sharpened on one of the Murkwater inducts.  I'm hoping I can work this existing edge onto the axehead.")

	AddQuestStepKill(Quest, 2, "I should try to find a sanded axe shaft on the Murkwater stewards.", 1, 10, "I now have an axehead with a vicious edge to it.  It's still not in usable conditon, however.  I now need to find a shaft to fit through this axehead.  Maybe one of Murkwater stewards might have something like that on them.", 838, 1550010, 1550047)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a sanded axe shaft.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've been able to find a shaft from the murkwater steward.")

	AddQuestStepKill(Quest, 3, "I should try to find a strong leather cord on the Murkwater abettors", 1, 10, "The last piece I'm going to need is a strong leather cord to wrap the axe to the shaft.  Maybe one of the Murkwater abettors might have something like that on them.", 1102, 1550008, 1550009, 1550045, 1550046)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found a strong leather cord.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've been able to find a leather cord on one of the Murkwater abettors.  Hopefully this will be all I need to make my axe.")
    if HasItem(Player, 3560) then
    RemoveItem(Player, 3560)
    end
	UpdateQuestDescription(Quest, "I've been able to reconstruct this axe to its former glory. I've name it The Gnasher in honor of its numerous, little teeth. I'm certain this axe will inflict much pain to my opponents.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
