
--[[
Script Name    : Quests/Antonica/unraveling_the_bloodsaber_plots.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.07 11:05:10
    Script Purpose : 

	Zone			:	Antonica
	Quest Giver		:	Captain Eitoa
	Preceded by		:	Recovery of the Bloodsaber Plans
	Followed by		:	Into the Crypt of Betrayal
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Raid the Bloodsaber meeting and kill Riason Hanagom.", 1, 100, "I must raid the meeting of Riason Hanagom and the Bloodsabers out at the old mill of Windstalker Pond in Antonica.", 75, 120150)
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
	UpdateQuestStepDescription(Quest, 1, "Raided the Bloodsaber meeting.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I raided the meeting of Bloodsabers at Windstalker pond and found a letter.")

	AddQuestStepChat(Quest, 2, "Speak to Captain Eitoa.", 1, "I must return to Captain Eitoa at the Qeynos Gates with the letter I found.", 75, 120069)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Spoke to Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to speak with Captain Eitoa.")

	AddQuestStepChat(Quest, 3, "Find a scholar.", 1, "I must take the encoded message to the mages at Three Towers in Qeynos to find someone to read it.", 75, 2310081)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Spoke to Shimmerstar.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I took the encoded message to Rune Shimmerstar to decode.")

	AddQuestStepChat(Quest, 4, "Speak to Captain Eitoa.", 1, "I must return to Captain Eitoa at the Qeynos Gates in Antonica with the text that Rune Shimmerstar deciphered.", 75, 120069)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "Spoke to Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned to Captain Eitoa with the decoded message.")

	AddQuestStepKill(Quest, 5, "Slay a Bloodsaber courier.", 1, 100, "I must stop the courier from meeting with the Dark Coven along the southern road in Antonica.", 611, 1) -- NEED CORRECT ID
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "Slain a Bloodsaber courier.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I fought and killed the Bloodsaber courier, but was too late.")

	AddQuestStepChat(Quest, 6, "Speak to Captain Eitoa.", 1, "I must return to Captain Eitoa at the Qeynos Gates and tell her of the messenger's success.", 11, 120069)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "Spoke Captain Eitoa.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I returned to Captain Eitoa and told her of the events that have transpired.")

	UpdateQuestDescription(Quest, "Now sure of the Bloodsaber's return, I am compelled to stop them from becoming a threat to our fair city of Qeynos once again.  The War of Plagues will not return.  There will be no future for this evil cult.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
