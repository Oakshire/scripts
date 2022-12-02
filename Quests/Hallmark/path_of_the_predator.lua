--[[
    Script Name    : Quests/Hallmark/path_of_the_predator.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 02:11:20
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the assassin leader who has holed up in the Qeynos Harbor.", 1, 100, "I need to track down and slay the leader of the assassins. They should be located in one of the buildings in the harbor.", 611, 0)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Well this is fortunate then! I have just been given news of a group of cutthroats taking up residence inside Qeynos' walls! The group and their leader are holed up down by the docks. Quickly and quietly deal with their leader. Doing so will be like cutting the head off a snake. Leaderless, they should soon disband from the city and you will have proven yourself as a predator!")
-- 	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik034.mp3", 1060882099, 2285417556)
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
    Dialog.AddOption("This does sound like a worthy task. My hunt begins.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've killed the assassin leader.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the leader of the assassins.")

	UpdateQuestDescription(Quest, "My skills were up to the task and I have succeeded in killing the leader of the ring without alerting the others.  They will undoubtedly break apart now that their leader has perished... and now I have earned the title of predator.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
