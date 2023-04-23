--[[
    Script Name    : Quests/Antonica/a_tour_of_antonica.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 07:04:54
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I must go to Crater Pond", 10, "I will seek out Crater Pond in Antonica.", 11, 85, -24, 502, 12)
		AddQuestStepZoneLoc(Quest, 2, "I must go to Coldwind Point", 10, "I must visit Coldwind Point in Antonica.", 11,  339, -16, 761, 12)
			AddQuestStepZoneLoc(Quest, 3, "I must go to Fippy's Hill", 10, "I must visit Fippy's Hill in Antonica. ", 11, -100, 7, -245, 12)
	AddQuestStepZoneLoc(Quest, 4, "I must go to the Forbidden Isle", 10, "I must visit the Forbidden Isle in Antonica. ", 11, 281, -28, -655, 12)
	AddQuestStepZoneLoc(Quest, 5, "I must go to the Keep of the Ardent Needle", 10, "I must visit the Keep of the Ardent Needle in Antonica.", 11, -554, -14, -346, 12)
	AddQuestStepZoneLoc(Quest, 6, "I must visit the Tower of the Oracles", 10, "I must visit the Tower of the Oracles in Antonica.", 11, -1033, 14, -629, 12)
	AddQuestStepZoneLoc(Quest, 7, "I must visit the Qeynos Hill Claymore", 10, "I must visit the Qeynos Hill Claymore in Antonica.", 11, -469, -1, 540, 12)
	AddQuestStepZoneLoc(Quest, 8, "I must visit Archer's Wood", 10, "I must visit the glade in Archer Woods located in Antonica.", 11, -659, -8, 509, 12)
	AddQuestStepZoneLoc(Quest, 9, "I must visit the Bells of Vhalen", 10, "I must visit the Bells of Vhalen in Antonica.", 11, -1300, 38, 45, 12)
	AddQuestStepZoneLoc(Quest, 10, "I must visit the Keep of the Gnollslayers", 10, "I must visit the Keep of the Gnollslayers in Antonica.", 11, -2121, -46, 415, 12)
	AddQuestStepZoneLoc(Quest, 11, "I must visit Fangbreaker Keep", 10, "I must visit Fangbreaker Keep in Antonica.", 11, -2036, -14, -488, 12)
	AddQuestStepZoneLoc(Quest, 12, "I must visit the Ruins of Caltorsis", 10, "I must visit the Ruins of Caltorsis in Antonica.", 11, -1454, -15, -759, 12)
	AddQuestStepZoneLoc(Quest, 13, "I must visit the Grave of Windstalker", 10, "I must visit the Grave of Windstalker in Antonica.", 11, -1854, -3, -622, 12)
	AddQuestStepZoneLoc(Quest, 14, "I must visit the Hidden Vale", 10, "I must visit the Hidden Vale in Antonica.", 11, -2054, -47, 959, 12)
	AddQuestStepZoneLoc(Quest, 15, "I must visit the main entrance of Stormhold", 10, "I must visit the grand entrance of Stormhold in Antonica.", 11,  -2350, -20, 230, 12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I saw Crater Pond.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I visited Crater Pond.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I saw Coldwind Point.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I visited Coldwind Point.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I visited Fippy's Hill.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I visited Fippy's Hill.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I saw the Forbidden Isle.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I visited the Forbidden Isle.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I saw the Keep of the Ardent Needle.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I visited the Keep of the Ardent Needle.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I visited the Tower of the Oracles.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I visited the Tower of the Oracles.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I visited the Qeynos Hill Claymore.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I visited the Qeynos Hill.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I visited Archer's Wood.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I visited the glade in Archer Wood.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I visited the Bells of Vhalen.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I visited the Bells of Vhalen.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I visited the Keep of the Gnollslayers.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I visited the Keep of the Gnollslayers.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I visited Fangbreaker Keep.")
	UpdateQuestTaskGroupDescription(Quest, 11, "I visited Fangbreaker Keep.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I visited the Ruins of Caltorsis.")
	UpdateQuestTaskGroupDescription(Quest, 12, "I visited the Ruins of Caltorsis.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I visited the Grave of Windstalker.")
	UpdateQuestTaskGroupDescription(Quest, 13, "I visited the Grave of Windstalker.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I visited the Hidden Vale.")
	UpdateQuestTaskGroupDescription(Quest, 14, "I visited the Hidden Vale.")
 CheckProgress(Quest, QuestGiver, Player)
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I visited the main entrance of Stormhold.")
	UpdateQuestTaskGroupDescription(Quest, 15, "I visited the grand entrance of Stormhold.")
 CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5806, 1) and QuestStepIsComplete(Player, 5806, 2) and QuestStepIsComplete(Player, 5806, 3) and QuestStepIsComplete(Player, 5806, 4) and QuestStepIsComplete(Player, 5806, 5) and QuestStepIsComplete(Player, 5806, 6) and QuestStepIsComplete(Player, 5806, 7) and QuestStepIsComplete(Player, 5806, 8) and QuestStepIsComplete(Player, 5806, 9) and QuestStepIsComplete(Player, 5806, 10) and QuestStepIsComplete(Player, 5806, 11) and QuestStepIsComplete(Player, 5806, 12) and QuestStepIsComplete(Player, 5806, 13) and QuestStepIsComplete(Player, 5806, 14) and QuestStepIsComplete(Player, 5806, 15) then
    AddQuestStepChat(Quest, 16, "Find the librarian of Three Towers.  ", 1, "I should take this field guide to a place in Qeynos known for housing volumes of knowledge, Three Towers.", 11, 2310086, 5890322)
	AddQuestStepCompleteAction(Quest, 16, "QuestComplete")
end
   end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 16, "Gave the book to Librarian Dalmas.")
	UpdateQuestTaskGroupDescription(Quest, 16, "I gave the field guide to the Concordium in Qeynos.")

	UpdateQuestDescription(Quest, "I visited all the locations listed in 'Bootstrutter's Field Guide to Antonica.' Having done so, I decided to return the book to my cities' local mage guild, keepers of all knowledge. They were delighted and rewarded me with a valuable piece of Bootstrutter gear.")
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
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

