--[[
    Script Name    : Quests/TheCommonlands/a_tour_of_the_commonlands_.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.31 03:05:05
    Script Purpose : 

        Zone       : Commonlands
        Quest Giver:  Bootstrutter's Field Guide to the Commonlands(Item)
        Preceded by: None
        Followed by: None
--]]

function Init(Quest)
		AddQuestStepLocation(Quest, 1, "Visit 'Turmoil Cemetery'", 15, "I am searching for 'Turmoil Cemetery' in the Commonlands.", 0, -1301,  -70,  320)
	AddQuestStepLocation(Quest, 2, "Visit 'The Lonely Tower'", 15, "I am searching for 'The Lonely Tower' in the Commonlands.", 0, -1312, -51, 579)
		AddQuestStepLocation(Quest, 3, "Visit 'Dog Pond'", 15, "I am searching for 'Dog Pond' in the Commonlands.", 0, -1054, -47, -219)
			AddQuestStepLocation(Quest, 4, "Visit 'Barrage Meadow'", 15, "I am searching for 'Barrage Meadow' in the Commonlands.", 0, -1270, -73, -285)
				AddQuestStepLocation(Quest, 5, "Visit 'Valor's End'", 15, "I am searching for 'Valor's End' in the Commonlands.", 0, -592, -49, -625)
				AddQuestStepLocation(Quest, 6, "Visit 'The Crossroads'", 15, "I am searching for 'Crossroads' in the Commonlands.", 0,  -486, -45, -301)
				AddQuestStepLocation(Quest, 7, "Visit 'The Wailing Caves'", 15, "I am searching for 'The Wailing Caves' in the Commonlands.", 0, -205, -44, -916)
					AddQuestStepLocation(Quest, 8, "Visit 'Lucan's Mount'", 15, "I am searching for 'Lucan's Mount' in the Commonlands.", 0, 8, -12, -767)
					AddQuestStepLocation(Quest, 9, "Visit 'The Wall of Taros'", 15, "I am searching for 'The Wall of Taros' in the Commonlands.", 0, 157, -48, -691)
						AddQuestStepLocation(Quest, 10, "Visit 'Enlightenment Cemetery'", 15, "I am searching for 'Enlightenment Cemetery' in the Commonlands.", 0, 140, -48, -262)
						AddQuestStepLocation(Quest, 11, "Visit 'The Ruins of Val'marr'", 15, "I am searching for 'The Ruins of Valmarr' in the Commonlands.", 0, 384, -46, 250)
						AddQuestStepLocation(Quest, 12, "Visit 'The Ring of Nature'", 15, "I am searching for 'The Ring of Nature' in the Commonlands.", 0, 683, -58, -99)
						AddQuestStepLocation(Quest, 13, "Visit 'The Tower of Zarvonn'", 15, "I am searching for 'The Tower of Zarvonn' in the Commonlands.", 0, 897, -45, -513)
						AddQuestStepLocation(Quest, 14, "Visit 'The Captain's Deck'", 15, "I am searching for 'The Captain's Deck' in the Commonlands.", 0, 1415, -16, 281)
						AddQuestStepLocation(Quest, 15, "Visit 'The Black Gates'", 15, "I am searching for 'The Black Gates' in the Commonlands.", 0, 1481, -38, -393)
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
end

function Step1Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 1, "I visited 'Turmoil Cemetery' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
    
end

function Step2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I visited 'The Lonely Tower' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
    
end

function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I visited 'Dog Pond' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
    
end

function Step4Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 4, "I visited 'Barrage Meadow' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 5, "I visited 'Valor's End' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step6Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 6, "I visited 'The Crossroads' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 7, "I visited 'The Wailing Caves' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 8, "I visited 'Lucan's Mount' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step9Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 9, "I visited 'The Wall of Taros' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step10Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 10, "I visited 'Enlightenment Cemetery' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step11Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 11, "I visited 'The Ruins of Val'marr' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step12Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 12, "I visited 'The Ring of Nature' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step13Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 13, "I visited 'The Tower of Zarvonn' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function Step14Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 14, "I visited 'The Captain's Deck' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end


function Step15Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 15, "	I visited 'The Black Gates' in the Commonlands.")
    	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
         if QuestStepIsComplete(Player, 5248, 1) and QuestStepIsComplete(Player, 5248, 2) and QuestStepIsComplete(Player, 5248, 3) and QuestStepIsComplete(Player, 5248, 4) and  QuestStepIsComplete(Player, 5248, 5) and QuestStepIsComplete(Player, 5248, 6) and QuestStepIsComplete(Player, 5248, 7) and QuestStepIsComplete(Player, 5248, 8) and QuestStepIsComplete(Player, 5248, 9) and QuestStepIsComplete(Player, 5248, 10) and QuestStepIsComplete(Player, 5248, 11) and QuestStepIsComplete(Player, 5248, 12) and QuestStepIsComplete(Player, 5248, 13) and QuestStepIsComplete(Player, 5248, 14) and QuestStepIsComplete(Player, 5248, 15) then
    	AddQuestStepChat(Quest, 16, "Seek the Tome Warden of the Academy of Arcane Science", 1, "I should turn this Bootstrutter Field Guide into the Freeport Academy of Arcane Science.", 0, 5590251)
end
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 16, "I turned the field guide into the Tome Warden.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I turned the Bootstrutter Field Guide of the Commonlands into the Freeport Academy of Arcane Science.")
	UpdateQuestDescription(Quest, "I visited all the locations listed in 'Bootstrutter's Field Guide to the Commonlands', having done so I decided to return the book to Freeport's Academy of Arcane Science, keeper of all knowledge. The Tome Warden was delighted and rewarded me with a valuable piece of Bootstrutter Gear.")
	GiveQuestReward(Quest, Player)
end


function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

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

