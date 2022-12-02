--[[
    Script Name    : Quests/Hallmark/path_of_the_bard.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 02:11:35
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik
        Preceded by: Scout Training pt. II
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to subdue the mob in the Fermented Grape, a small tavern in South Qeynos.  The tavern is located amongst the southern-most row of buildings.", 1, 100, "I need to save the other bard from an angry crowd.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Go rescue the poor minstrel from the angry crowd, of course.  Just handle the situation appropriately and make sure the bard is okay.  If you can handle that, then you'll have no problems with the fallout from a bad evening, even under the worst conditions.")
 	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik034.mp3", 1060882099, 2285417556)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("Sounds easy enough. I am a bard after all.")	
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
	UpdateQuestStepDescription(Quest, 1, "I've subdued the mob.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've saved the other bard from the angry crowd.")

	UpdateQuestDescription(Quest, "I managed to lay out the entire mob single-handedly.  I've proven that even in the off-chance I give a bad performance, I can handle anything the crowd might throw at me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
