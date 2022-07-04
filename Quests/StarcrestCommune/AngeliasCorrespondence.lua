--[[
    Script Name    : Quests/StarcrestCommune/AngeliasCorrespondence.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 08:06:17
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Angelia Clayton
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should take the note to Karrie Clayton in Nettleville.", 1, "I should take this note from Angelia Clayton to her sister Karrie in Nettleville.", 11,2330021)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Nettleville")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Thank you friend!  I've not heard from Karrie in a long time.  I hope your visit finds her well.")
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/angelia_clayton/qey_village02/angeliaclayton002.mp3", 4258865427, 3710093138)
	Dialog.AddOption("I'll head that way shortly.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I delivered the note to Karrie Clayton.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the note to Karrie Clayton.")
    UpdateQuestZone(Quest,"Starcrest Commune")
	AddQuestStepChat(Quest, 2, "I should return to Angelia Clayton in Starcrest.", 1, "I should return to Angelia Clayton with her sister Karrie's message in Starcrest Commune.", 11,2340029)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Angelia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Angelia.")

	UpdateQuestDescription(Quest, "I took the note from Angelia to Karrie who turned out to be doing quite well with her tips.  I then returned to Angelia with the response from her sister.  I wonder if Angelia will go join her sister as a backup dancer.  She was nice enough to get me a few drinks in thanks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

