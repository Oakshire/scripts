--[[
    Script Name    : Quests/Antonica/pecketts_patrol.lua
    Script Author  : Premierio015
    Script Date    : 2022.08.11 08:08:59
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Corporal Peckett.", 1, "I must speak to Corporal Peckett near the lighthouse at Coldwind Point in Antonica.", 11, 120097)
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
	UpdateQuestStepDescription(Quest, 1, "Spoke to Corporal Peckett.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Corporal Peckett at the lighthouse on Coldwind Point.")

	AddQuestStepZoneLoc(Quest, 2, "Walk the trailhead.", 10, "I will patrol the Coldwind Trail that begins near the lighthouse bridge in Antonica.", 11, 405, -24, 668, 12)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Walked the trailhead.")

	AddQuestStepZoneLoc(Quest, 3, "Follow the trail you are on.", 10, "I will patrol the Coldwind Trail that begins near the lighthouse bridge in Antonica.", 11, 421, -26, 590, 12)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Followed the trail.")

	AddQuestStepZoneLoc(Quest, 4, "Follow the trail you are on.", 10, "I will patrol the Coldwind Trail that begins near the lighthouse bridge in Antonica.", 11, 296, -21, 471, 12)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Walked the midtrail.")

	AddQuestStepZoneLoc(Quest, 5, "Walk the trailend.", 10, "I will patrol the Coldwind Trail that begins near the lighthouse bridge in Antonica.", 11, 319, -19, 404, 12)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Walked the trailend.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I patrolled the Coldwind Trail that begins near the lighthouse bridge in Antonica.")

	AddQuestStepChat(Quest, 6, "Speak to Corporal Batton.", 1, "I must check in with Corporal Batton at the South Gate of Qeynos in Antonica.", 11, 120446)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "Spoke to Corporal Batton.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I checked in with Corporal Batton at the South Gate of Qeynos in Antonica.")

	AddQuestStepZoneLoc(Quest, 7, "Walk the north bank.", 10, "I must patrol the banks of Crater Pond just east of the South Gate of Qeynos.", 11, 149, -24, 392, 12)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "Walked the north bank.")

	AddQuestStepZoneLoc(Quest, 8, "Walk the south bank.", 10, "I must patrol the banks of Crater Pond just east of the South Gate of Qeynos.", 11, 162, -21, 542, 12)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "Walked the south bank.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I patrolled the banks of Crater Pond just east of the South Gate of Qeynos.")

	AddQuestStepZoneLoc(Quest, 9, "Walk the trailhead of Black Glade Trail.", 10, "I must patrol Black Glade Trail just northeast of Crater Pond in Antonica. I should start where Black Glade Trail meets the road to Qeynos and then follow it south.", 11, -31, -9, 231, 12)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "Walked the trailhead.")

	AddQuestStepZoneLoc(Quest, 10, "Follow the trail you are on.", 10, "I must patrol Black Glade Trail just northeast of Crater Pond in Antonica. I should start where Black Glade Trail meets the road to Qeynos and then follow it south.", 11, -78, -26, 367, 12)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "Followed the trail.")

	AddQuestStepZoneLoc(Quest, 11, "Follow the trail you are on.", 10, "I must patrol Black Glade Trail just northeast of Crater Pond in Antonica. I should start where Black Glade Trail meets the road to Qeynos and then follow it south.", 11, -70, -27, 477, 12)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "Followed the trail.")

	AddQuestStepZoneLoc(Quest, 12, "Follow the trail you are on.", 10, "I must patrol Black Glade Trail just northeast of Crater Pond in Antonica. I should start where Black Glade Trail meets the road to Qeynos and then follow it south.", 11, -66, -24, 552, 12)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "Walked the midtrail.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I patrolled Black Glade Trail just northeast of Crater Pond in Antonica.")

	AddQuestStepChat(Quest, 13, "Speak to Captain Antillin.", 1, "I should speak to Captain Antillin of the Coldwind Point Garrison. I have run into him on Black Glade Trail.", 11, 120264)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "Spoke to Captain Antillin.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I spoke to Captain Antillin of the Coldwind Point Garrison. I ran into him on Black Glade Trail.")

	AddQuestStepChat(Quest, 14, "Speak to Corporal Peckett.", 1, "I must return to Corporal Peckett at the lighthouse in Antonica.", 11, 120097)
	AddQuestStepCompleteAction(Quest, 14, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 14, "Spoke to Corporal Peckett.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I returned to Corporal Peckett at the lighthouse in Antonica.")

	UpdateQuestDescription(Quest, "I patrolled the lighthouse sector of Antonica for Corporal Peckett. I found Captain Antillin and learned that he has discovered a gnoll den. He returned to plot its location.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
