--[[
	Script Name		:	words_of_pure_magic.lua
	Script Purpose	:	Handles the quest, "Words of Pure Magic"
	Script Author	:	Dorbin
	Script Date		:	5/31/2022
	Script Notes	:	

	Zone			:	Language
	Quest Giver		:	North Freeport, Academy of Arcane Science, main floor ( 11, -7, -128 ) , stack of books on top of the table
                        South Qeynos, Mage Tower, yellow teleporter ( 707, 82, 127 )  "Words of Pure Magic" text.
                        Kelethin, Kelethin Research Library building, ( 136, 109, 178 ) , half stack of books on table
                        Neriak, City of Hate, Library of K'Lorn, ( -686, 18, 249 ) , books on top of the shelf
                        New Halas, Glacierbane's Vault, ( -117, 148, -82 ) , open book on the floor beside Dannon Ramsdell
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Find the Zet Druzaic Shrine.", 1, "I need to venture into the Shattered Lands and find the four Druzaic Shrines. Knowling the locations of these mythical shrines would be wise before I begin this quest. The Druzaic Shrines could be anywhere!", 11, 2490617,1790462)
	AddQuestStepChat(Quest, 2, "Find the Myr Druzaic Shrine.", 1, "I need to venture into the Shattered Lands and find the four Druzaic Shrines. Knowling the locations of these mythical shrines would be wise before I begin this quest. The Druzaic Shrines could be anywhere!", 11, 390471,1900347)
	AddQuestStepChat(Quest, 3, "Find the Uzu Druzaic Shrine.", 1, "I need to venture into the Shattered Lands and find the four Druzaic Shrines. Knowling the locations of these mythical shrines would be wise before I begin this quest. The Druzaic Shrines could be anywhere!", 11, 1710304)
	AddQuestStepChat(Quest, 4, "Find the Kab Druzaic Shrine.", 1, "I need to venture into the Shattered Lands and find the four Druzaic Shrines. Knowling the locations of these mythical shrines would be wise before I begin this quest. The Druzaic Shrines could be anywhere!", 11, 1790462,2490617)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I found and studied the Vul'Zet Shrine.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found and studied the Vul'Myr Shrine.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found and studied the Vul'Uzu Shrine.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found and studied the Vul'Kab Shrine.")
	CheckProgress(Quest, QuestGiver, Player)
end




function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5572, 1) and QuestStepIsComplete(Player, 5572, 2) and QuestStepIsComplete(Player, 5572, 3) and QuestStepIsComplete(Player, 5572, 4)then
	UpdateQuestTaskGroupDescription(Quest, 1, "I found all four Druzaic Shrines and now comprehend the language of pure magic, Druzaic.")
	UpdateQuestDescription(Quest, "I finally discovered all four of the Druzaic Shrines in the Shattered Lands. I have studied them and learned the language of pure magic, Druzaic.")
	GiveQuestReward(Quest, Player)
	AddLanguage(Player, 27)
	SendMessage(Player, "You have learned the basics of the Druzaic language.", "White")
	end	
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
	end
end

