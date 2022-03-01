--[[
	Script Name		:	Quests/Commonlands/the_return_of_the_light.lua
	Script Purpose	:	Handles the quest, "The Return of the Light"
	Script Author	:	premierio015
	Script Date		:	30.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Heritage
	Quest Giver		:	Burned Out Lightstone(item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
    SetQuestRewardStatus(Quest, 23733)
	AddQuestStepChat(Quest, 1, "I should find someone interested in this burned out lightstone.", 1, "I need to find someone who I can sell this burned out lightstone to.  Someone must be interested in a unique item like this.", 11, 330175)
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
	UpdateQuestStepDescription(Quest, 1, "I showed the lightstone to Cannix Silverflame.")
	UpdateQuestTaskGroupDescription(Quest, 1, "A strange man named Cannix Silverflame seems very interested in the lightstone.  I'll follow what he says for now to learn more.")

	AddQuestStep(Quest, 2, "I need to touch ''the Mourned'' with this lightstone.", 1, 100, "I need to find whatever ''the Mourned'' and ''the Forgotten'' is and touch this lightstone to them.", 1176)
		AddQuestStep(Quest, 3, "I need to touch ''the Forgotten'' with this lightstone.", 1, 100, "I need to find whatever ''the Mourned'' and ''the Forgotten'' is and touch this lightstone to them.", 1176)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I touched &quot;the Mourned&quot; with the lightstone.")
	 CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I touched ''the Forgotten'' with the lightstone.")
   	 CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Cannix Silverflame.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Cannix Silverflame.")
    GiveQuestItem(Quest, Player, "I returned to Cannix Silverflame.",  151067)
	AddQuestStepKill(Quest, 5, "I need to slay the lion Rama'nai.", 1, 100, "I need to find and kill the great beast Rama'nai in honorable combat.  He can be found in the Commonlands.", 611, 330088)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I slew Rama'nai.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I defeated the lion Rama'nai in combat and dipped the lightstone in his blood.  The stone is glowing brighter now.")
	if HasItem(Player, 151067) then
    RemoveItem(Player, 151067)
    end
    GiveQuestItem(Quest, Player, "I returned to Cannix Silverflame.",   144492)
	AddQuestStepChat(Quest, 6, "I should return to Cannix Silverflame.", 1, "I should return to Cannix Silverflame.", 11, 330175)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I returned to Cannix Silverflame.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I returned to Cannix Silverflame.")
	AddQuestStepKill(Quest, 7, "I need to slay Captain Ogof.", 1, 100, "I need to find and defeat the orc captains that are defiling and stealing from the ancient graves of the Knights of Truth.", 611, 330266)
		AddQuestStepKill(Quest, 8, "I need to slay Captain Gaer.", 1, 100, "I need to find and defeat the orc captains that are defiling and stealing from the ancient graves of the Knights of Truth.", 611, 330264)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
		AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I defeated Captain Ogof.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I defeated Captain Gaer.")
  CheckProgress(Quest, QuestGiver, Player)
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I returned to Cannix Silverflame.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I returned to Cannix Silverflame.")
    	if HasItem(Player, 144492) then
    RemoveItem(Player, 144492)
    end
    GiveQuestItem(Quest, Player, "I returned to Cannix Silverflame.", 180730)        
	AddQuestStepKill(Quest, 10, "I need to defeat the High Priest of Val'marr.", 1, 100, "I need to release the High Priest of Val'marr from his cursed state and allow him to rest in peace.", 611, 330076)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I defeated the High Priest of Val'marr.")
	UpdateQuestTaskGroupDescription(Quest, 8, "I defeated the High Priest of Val'marr.  The lightstone's light increased as the High Priest was finally laid to rest.")
	AddQuestStepChat(Quest, 11, "I should return to Cannix Silverflame.", 1, "I should return to Cannix Silverflame.", 11, 330175)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I returned to Cannix Silverflame.")
	UpdateQuestTaskGroupDescription(Quest, 9, "I returned to Cannix Silverflame.")
	 if HasItem(Player, 180730) then
     RemoveItem(Player, 180730)
    end
    GiveQuestItem(Quest, Player, "I returned to Cannix Silverflame.",  155134)      
	AddQuestStepKill(Quest, 12, "I need to recover a broken Sword of Truth from General Drull.", 1, 100, "I need to recover a broken Sword of Truth from the orc General Drull.  Cannix says he can be found in the Bloodskulls' camp.", 45, 3060020)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I recovered the broken Sword of Truth from General Drull.")
	UpdateQuestTaskGroupDescription(Quest, 10, "I recovered the sword from General Drull.  I found him in Bloodskull Valley with the other leaders of the Bloodskull clan.")
    
	AddQuestStep(Quest, 13, "I should return to Cannix Silverflame.", 1, 100, "I should return to Cannix Silverflame.", 11)
	AddQuestStepCompleteAction(Quest, 13, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 13, "I got my Greater Lightstone back.")
	UpdateQuestTaskGroupDescription(Quest, 11, "I got my Greater Lightstone back.")

	UpdateQuestDescription(Quest, "It looks like I now have in my possession a legendary Greater Lightstone.  By following the directions of Cannix Silverflame, I was able to increase the power of the lightstone gradually.  Cannix says this object has some importance among his people, too bad he isn't around anymore so I can ask him about it...")
	GiveQuestReward(Quest, Player)
end


function  CheckProgress(Quest, QuestGiver, Player)
if QuestStepIsComplete(Player, 485, 2) and QuestStepIsComplete(Player, 485, 3)  then
    	UpdateQuestTaskGroupDescription(Quest, 2, "I touched the lightstone to both of the Cavalier statues ''the Mourned'' and ''the Forgotten''.  My lightstone seems to be glowing brighter now.")
	AddQuestStepChat(Quest, 4, "I should return to Cannix Silverflame.", 1, "I should return to Cannix Silverflame.", 11, 330175)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
elseif QuestStepIsComplete(Player, 485, 7) and QuestStepIsComplete(Player, 485, 8) then
    	UpdateQuestTaskGroupDescription(Quest, 6, "I killed the orc captains Ogof and Gaer.  The lightstone has grown even brighter with this accomplishment.")
	AddQuestStepChat(Quest, 9, "I should return to Cannix Silverflame.", 1, "I should return to Cannix Silverflame.", 11, 330175)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
