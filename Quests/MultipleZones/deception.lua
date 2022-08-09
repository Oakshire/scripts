--[[
    Script Name    : Quests/MultipleZones/deception.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.08 08:08:56
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: Fire and Ice
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "We need to obtain a Translocation Ring from Niscanith.", 1, 100, "We need to find Darathar's Drakota that are in possession of the other four Translocation Rings.", 597, 3330000)
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
	UpdateQuestStepDescription(Quest, 1, "We have Niscanith 's Translocation Ring.")

	AddQuestStepKill(Quest, 2, "We need to obtain a Translocation Ring from Trenda'loz.", 1, 100, "We need to find Darathar's Drakota that are in possession of the other four Translocation Rings.", 597, 1200000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "We have Trenda'loz 's Translocation Ring.")

	AddQuestStepKill(Quest, 3, "We need to obtain a Translocation Ring from Vanudozalon.", 1, 100, "We need to find Darathar's Drakota that are in possession of the other four Translocation Rings.", 597, 3230000)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "We have Vanudozaon's Translocation Ring.")

	AddQuestStepKill(Quest, 4, "We need to obtain a Translocation Ring from Kaljanar.", 1, 100, "We need to find Darathar's Drakota that are in possession of the other four Translocation Rings.", 597, 4720002)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "We recovered the Translocation Ring from the Deathfist Empire.")
	UpdateQuestTaskGroupDescription(Quest, 1, "We now have all five Translocation Rings and can use them to travel to Darathar's lair.")

	AddQuestStepKill(Quest, 5, "We must defeat Darathar and recover the prismatic egg.", 1, 100, "We need to use the five Translocation Rings at the Tower of the Cold Wind oracles and defeat Darathar.", 1159, 6650000)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "We defeated Darathar!")
	UpdateQuestTaskGroupDescription(Quest, 2, "We destroyed Darathar!  The egg shattered at the same time Darathar was killed.")

	AddQuestStepChat(Quest, 6, "We need to return the shattered pieces of the egg to Nagafen.", 1, "We need to take the shards of the prismatic egg to Nagafen and let him know it was destroyed.", 1188,2460001)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "We spoke to Nagafen.")
	UpdateQuestTaskGroupDescription(Quest, 3, "We took the shards to Nagafen and told him Darathar was defeated.")

	UpdateQuestDescription(Quest, "Darathar has been defeated but the egg was destroyed at the end of the battle.  All that was left were prismatic egg shell shards.  It seems Nagafen was only using us to find his missing egg.  He didn't care it was destroyed, he was more concerned with someone other than himself possessing it. <br> <br>")
	GiveQuestReward(Quest, Player)
end