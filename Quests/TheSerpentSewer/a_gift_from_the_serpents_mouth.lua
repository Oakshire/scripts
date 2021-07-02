--[[
	Script Name		:	Quests/TheSerpentSewer/a_gift_from_the_serpents_mouth.lua
	Script Purpose	:	Handles the quest, "A Gift From the Serpent's Mouth"
	Script Author	:	premierio015
	Script Date		:	02.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find someone that can make use of this fang.", 1, "I should find someone in The Serpent Sewer that could make use of this fang.", 11, 1550056)
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
	UpdateQuestStepDescription(Quest, 1, "I spoke with Marcus Puer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Marcus Puer can make use of the fang.")

	AddQuestStepKill(Quest, 2, "I need to collect three filthy moccasin snake skins.", 3, 50, "I need to collect the materials Marcus Puer needs to fashion a weapon from the fang.", 98, 1550002, 1550039)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the moccasin snake skins.")

	AddQuestStepKill(Quest, 3, "I need to collect two globs of goo from drudge globules.", 2, 50, "I need to collect the materials Marcus Puer needs to fashion a weapon from the fang.", 345, 1550001, 1550038)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the globs of goo.")

	AddQuestStepKill(Quest, 4, "I need to collect a hollow cog shaft from a crazed channel mender.", 1, 50, "I need to collect the materials Marcus Puer needs to fashion a weapon from the fang.", 841, 1550012, 1550013, 1550049, 1550050)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found the hollow cog.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I collected everything Marcus needs to create the weapon.")

	AddQuestStepChat(Quest, 5, "I need to return to Marcus in the Serpent Sewer.", 1, "I should return to Marcus Puer with the materials I've collected.", 11, 1550056)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I gave the materials to Marcus.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Marcus with the materials.")
    if HasItem(Player, 13354) then
    RemoveItem(Player, 13354)
    end
	UpdateQuestDescription(Quest, "Marcus Puer was able to craft me a weapon from the fang once I was able to collect the materials he needed.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


