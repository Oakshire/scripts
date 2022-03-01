--[[
	Script Name		:	GnollReport.lua
	Script Purpose	:	Handles the quest, "Gnoll Report"
	Script Author	:	geordie0511
	Script Date		:	19.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	Captain Eitoa
	Preceded by		:	The Keep of the Ardent Needle
	Followed by		:	A Captain's Communique: Eitoa to Sturman
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Captain Beltho at Gnollslayer Keep.", 1, "I must go to Gnollslayer Keep. Follow the eastward road running from the North Gate of Qeynos. It leads towards the Thundering Steppes. Along the way I shall find the keep.", 11, 120400)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke with Captain Beltho.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Captain Beltho, though he does not have the report ready at this time.")

	AddQuestStepZoneLoc(Quest, 2, "Go to the hidden entrance of the gnoll lair.", 30, "I must find the hidden entrance to the gnoll lair somewhere near the southern islands.", 11, -1214, -3, 912, 12)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Found the hidden entrance of Blackburrow.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found the hidden entrance to the gnoll lair at the base of the southern range in Antonica.")

	AddQuestStepChat(Quest, 3, "Speak to Captain Beltho at Gnollslayer Keep.", 1, "I must return with the location of the entrance to Captain Beltho in Gnollslayer Keep in Antonica.", 11, 120400)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Spoke to Captain Beltho.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've picked up the report from Captain Beltho in Gnollslayer Keep.")

	AddQuestStepChat(Quest, 4, "Speak to Captain Eitoa near the North Qeynos gate.", 1, "I must deliver Captain Beltho's report safely to Captain Eitoa at the gates of Qeynos.", 75, 120069)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "Spoke to Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've safely delivered Captain Beltho's report to Captain Eitoa.")

	UpdateQuestDescription(Quest, "Not only have I returned the report to Captain Eitoa, I've also discovered the origin of the gnoll presence in Antonica. Perhaps I can venture inside later. Who knows what waits within? The entrance has thought to have been sealed for ages.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
