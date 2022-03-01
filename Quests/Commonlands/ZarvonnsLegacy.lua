--[[
	Script Name		:	Quests/Commonlands/ZarvonnsLegacy.lua
	Script Purpose	:	Handles the quest, "Zarvonn's Legacy"
	Script Author	:   premierio015
	Script Date		:	23.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with the old nomad, Gierasa", 1, "Impellia Abettus, an ill woman at the Crossroads has suggested that the nomads of the Commonlands may know more about Zarvonn.", 11, 330139)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Gierasa Kulnovich")
	UpdateQuestTaskGroupDescription(Quest, 1, "The nomad mother has directed me to Zarvonn's old tower.  She claims I will find out more there.")

	AddQuestStepChat(Quest, 2, "I need to speak with the woman in Zarvonn's tower.", 1, "I need to find a woman in Zarvonn's old tower in the northern part of the Commonlands.", 11, 330115)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Assistant D'Verin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "D'Verin, assistant to the necromancer living in Zarvonn's tower, has agreed to involve me in her research.")

	AddQuestStepKill(Quest, 3, "I need to gather the skulls from the orc skeletons that appear to be leading the other undead.", 4, 100, "I need to seek the ruins of the last siege attempt near Freeport.  Within the haunted site, I need to look for some undead that are more powerful than the others.  Once I have killed them, I need to gather four skulls for D'Verin.", 91, 330228)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected four skulls from the fallen orc lieutenants.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've collected the skulls for D'Verin.")

	AddQuestStepChat(Quest, 4, "I need to speak with D'Verin", 1, "I need to bring these skulls back to D'Verin in the Mad Mage's Tower", 11, 330115)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with D'Verin")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've given D'Verin the skulls of the greater undead that she needed for her research")

	AddQuestStepChat(Quest, 5, "I need to speak with D'Verin's Mistress", 1, "D'Verin has offered to let me speak with her Mistress.  Apparently she'll speak with me now.", 11, 330114)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've spoken with Overseer Melicinn")
	UpdateQuestTaskGroupDescription(Quest, 5, "Overseer Melicinn has agreed to work with me to find where Zarvonn disappeared to.")

	AddQuestStepKill(Quest, 6, "I must find the lost soul and recover ectoplasmic goo from its remains", 1, 100, "I need to seek a lost soul in the graveyard.  Melicinn claims this ghost is one of the oldest within the commonlands.  I only hope that it has not grown stronger over the years.", 168, 330236)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have recovered the ectoplasmic goo")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've collected the ectoplasmic residue of the ancient lost soul in the old graveyard.")

	AddQuestStepChat(Quest, 7, "I need to speak with Melicinn", 1, "I need to bring this residue to Melicinn in Zarvonn's Tower.", 11, 330114)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "I've spoken with Melicinn")
	UpdateQuestTaskGroupDescription(Quest, 7, "I've given the magic-laced residue to Melicinn, and she has completed her ritual.")

	UpdateQuestDescription(Quest, "Though it has taken a while, my determination to locate the whereabouts of Zarvonn the Mad Mage has paid off.  I have a mark that will allow me to journey to where Zarvonn may have fled centuries ago.  All I need to do is to look closely into the stone at the top of his former tower.")
	GiveQuestReward(Quest, Player)
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


