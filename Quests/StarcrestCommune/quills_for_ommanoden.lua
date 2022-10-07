--[[
    Script Name    : Quests/StarcrestCommune/quills_for_ommanoden.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.01 07:07:52
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Scribe Ommanoden
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	UpdateQuestZone(Quest, "Antonica")	
	AddQuestStepKill(Quest, 1, "I must find five feathers from hawks in Antonica.", 5, 75, "I must find five perfect hawk feathers from the hawks in Antonica for Scribe Ommanoden.", 149, 2370108,120064,120029)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Now, these quills must be perfect.  Take your time and examine each feather for the correct width, breadth, and sturdiness.  If the feathers are even slightly imperfect, toss them aside.  I've no use for them.  Now, run along and fetch my quills.")
    PlayFlavor(QuestGiver, "", "", "orate", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/scribe_ommanoden/qey_village02/ommanoden001.mp3", 3176284758, 506456632)
	Dialog.AddOption("Perfect feathers for perfect quills.  Got it.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found five feathers from the hawks in Antonica.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a perfect sample of hawk feathers for Scribe Ommanoden.")
	UpdateQuestZone(Quest, "Starcrest Commune")	

	AddQuestStepChat(Quest, 2, "I must return to Scribe Ommanoden.", 1, "I need to deliver these feathers to Scribe Ommanoden in Starcrest Commune.", 149, 2340052)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Scribe Ommanoden.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delievered the hawk feathers to Scribe Ommanoden.")

	UpdateQuestDescription(Quest, "Despite gathering the most perfect feathers for his quills, the Erudite scribe remained aloof.  Perhaps one day I will call on him to find information for me in all those books and scrolls he pens.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end

